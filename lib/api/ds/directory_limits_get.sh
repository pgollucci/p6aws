######################################################################
#<
#
# Function:
#	p6_aws_ds_directory_limits_get()
#
#>
######################################################################
p6_aws_ds_directory_limits_get() {

    p6_run_read_cmd aws ds get-directory-limits "$@"
}