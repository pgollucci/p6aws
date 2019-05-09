p6_aws_application_autoscaling_scaling_activities_describe() {
    local service_namespace="$1"
    shift 1

    p6_run_read_cmd aws application-autoscaling describe-scaling-activities --service-namespace $service_namespace "$@"
}
