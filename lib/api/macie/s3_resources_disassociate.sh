######################################################################
#<
#
# Function:
#	p6_aws_macie_s3_resources_disassociate(associated_s3_resources)
#
#  Args:
#	associated_s3_resources - 
#
#>
######################################################################
p6_aws_macie_s3_resources_disassociate() {
    local associated_s3_resources="$1"
    shift 1

    p6_run_write_cmd aws macie disassociate-s3-resources --associated-s3-resources $associated_s3_resources "$@"
}