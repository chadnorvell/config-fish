function import_systemd_env --description 'Import systemd environment variables into fish'
    # Parse arguments for verbose flag
    set -l verbose 0
    set -l options 'v/verbose'

    if not argparse -n import_systemd_env $options -- $argv
        return 1
    end

    if set -q _flag_verbose
        set verbose 1
    end

    # Get the output from systemd environment generator
    set -l env_output (/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

    if test -z "$env_output"
        echo "No environment variables found"
        return 1
    end

    # Process each line
    for line in $env_output
        # Skip empty lines
        if test -z "$line"
            continue
        end

        # Extract variable name and value
        # The format is typically NAME=VALUE
        set -l parts (string split -m 1 "=" $line)

        if test (count $parts) -eq 2
            set -l var_name $parts[1]
            set -l var_value $parts[2]

            # For PATH-like variables, we need to convert colon-separated values to fish lists
            if test "$var_name" = "PATH" -o (string match -r '.*PATH' "$var_name")
                # Convert colon-separated path to fish list
                set -l path_elements (string split ":" $var_value)
                # Set the variable as a global variable (-g flag)
                set -gx $var_name $path_elements
                if test $verbose -eq 1
                    echo "Set $var_name as list with "(count $path_elements)" elements"
                end
            else
                # Set regular variables
                set -gx $var_name $var_value
                if test $verbose -eq 1
                    echo "Set $var_name=$var_value"
                end
            end
        else
            if test $verbose -eq 1
                echo "Warning: Could not parse line: $line"
            end
        end
    end

    if test $verbose -eq 1
        echo "Environment variables imported from systemd"
    end
end
