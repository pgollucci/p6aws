######################################################################
#<
#
# Function:
#      = p6_aws_ec2_principal_id_format_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_principal_id_format_describe() {

    p6_run_read_cmd aws ec2 describe-principal-id-format "$@"
}