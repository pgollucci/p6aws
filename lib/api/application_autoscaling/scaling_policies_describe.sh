p6_aws_application_autoscaling_scaling_policies_describe() {
    local service_namespace="$1"
    shift 1

    p6_run_read_cmd aws application-autoscaling describe-scaling-policies --service-namespace $service_namespace "$@"
}
