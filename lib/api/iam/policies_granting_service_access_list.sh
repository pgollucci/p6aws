######################################################################
#<
#
# Function:
#      = p6_aws_iam_policies_granting_service_access_list(arn, service_namespaces)
#
# Arg(s):
#    arn - 
#    service_namespaces - 
#
#
#>
######################################################################
p6_aws_iam_policies_granting_service_access_list() {
    local arn="$1"
    local service_namespaces="$2"
    shift 2

    p6_run_read_cmd aws iam list-policies-granting-service-access --arn $arn --service-namespaces $service_namespaces "$@"
}