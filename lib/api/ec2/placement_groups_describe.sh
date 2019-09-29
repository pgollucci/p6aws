######################################################################
#<
#
# Function:
#      = p6_aws_ec2_placement_groups_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_placement_groups_describe() {

    p6_run_read_cmd aws ec2 describe-placement-groups "$@"
}