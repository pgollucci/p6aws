######################################################################
#<
#
# Function:
#	p6_aws_ec2_id_format_describe()
#
#>
######################################################################
p6_aws_ec2_id_format_describe() {

    p6_run_read_cmd aws ec2 describe-id-format "$@"
}