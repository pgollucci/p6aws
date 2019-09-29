######################################################################
#<
#
# Function:
#      = p6_aws_macie_s3_resources_associate(s3_resources)
#
# Arg(s):
#    s3_resources - 
#
#
#>
######################################################################
p6_aws_macie_s3_resources_associate() {
    local s3_resources="$1"
    shift 1

    p6_run_write_cmd aws macie associate-s3-resources --s3-resources $s3_resources "$@"
}