######################################################################
#<
#
# Function:
#      = p6_aws_iam_service_last_accessed_details_with_entities_get(job_id, service_namespace)
#
# Arg(s):
#    job_id - 
#    service_namespace - 
#
#
#>
######################################################################
p6_aws_iam_service_last_accessed_details_with_entities_get() {
    local job_id="$1"
    local service_namespace="$2"
    shift 2

    p6_run_read_cmd aws iam get-service-last-accessed-details-with-entities --job-id $job_id --service-namespace $service_namespace "$@"
}