######################################################################
#<
#
# Function:
#      = p6_aws_dms_certificates_describe()
#
#
#
#>
######################################################################
p6_aws_dms_certificates_describe() {

    p6_run_read_cmd aws dms describe-certificates "$@"
}