######################################################################
#<
#
# Function:
#      = p6_aws_emr_instance_groups_modify()
#
#
#
#>
######################################################################
p6_aws_emr_instance_groups_modify() {

    p6_run_write_cmd aws emr modify-instance-groups "$@"
}