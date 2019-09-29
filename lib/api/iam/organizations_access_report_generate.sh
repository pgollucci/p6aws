######################################################################
#<
#
# Function:
#      = p6_aws_iam_organizations_access_report_generate(entity_path)
#
# Arg(s):
#    entity_path - 
#
#
#>
######################################################################
p6_aws_iam_organizations_access_report_generate() {
    local entity_path="$1"
    shift 1

    p6_run_write_cmd aws iam generate-organizations-access-report --entity-path $entity_path "$@"
}