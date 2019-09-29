######################################################################
#<
#
# Function:
#      = p6_aws_ds_trusts_describe()
#
#
#
#>
######################################################################
p6_aws_ds_trusts_describe() {

    p6_run_read_cmd aws ds describe-trusts "$@"
}