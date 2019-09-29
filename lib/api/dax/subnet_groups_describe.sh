######################################################################
#<
#
# Function:
#      = p6_aws_dax_subnet_groups_describe()
#
#
#
#>
######################################################################
p6_aws_dax_subnet_groups_describe() {

    p6_run_read_cmd aws dax describe-subnet-groups "$@"
}