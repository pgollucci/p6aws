######################################################################
#<
#
# Function:
#      = p6_aws_appstream_directory_configs_describe()
#
#
#
#>
######################################################################
p6_aws_appstream_directory_configs_describe() {

    p6_run_read_cmd aws appstream describe-directory-configs "$@"
}