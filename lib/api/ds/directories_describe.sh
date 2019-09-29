######################################################################
#<
#
# Function:
#      = p6_aws_ds_directories_describe()
#
#
#
#>
######################################################################
p6_aws_ds_directories_describe() {

    p6_run_read_cmd aws ds describe-directories "$@"
}