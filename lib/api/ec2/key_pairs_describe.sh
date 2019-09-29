######################################################################
#<
#
# Function:
#      = p6_aws_ec2_key_pairs_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_key_pairs_describe() {

    p6_run_read_cmd aws ec2 describe-key-pairs "$@"
}