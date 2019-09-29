######################################################################
#<
#
# Function:
#      = p6_aws_appstream_directory_config_update(directory_name)
#
# Arg(s):
#    directory_name - 
#
#
#>
######################################################################
p6_aws_appstream_directory_config_update() {
    local directory_name="$1"
    shift 1

    p6_run_write_cmd aws appstream update-directory-config --directory-name $directory_name "$@"
}