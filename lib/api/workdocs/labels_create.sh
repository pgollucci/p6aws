######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_labels_create(resource_id, labels)
#
# Arg(s):
#    resource_id - 
#    labels - 
#
#
#>
######################################################################
p6_aws_workdocs_labels_create() {
    local resource_id="$1"
    local labels="$2"
    shift 2

    p6_run_write_cmd aws workdocs create-labels --resource-id $resource_id --labels $labels "$@"
}