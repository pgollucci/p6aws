p6_aws_opsworks_app_create() {
    local stack_id="$1"
    local name="$2"
    local type="$3"
    shift 3

    p6_log_or_run aws opsworks create-app --stack-id $stack_id --name $name --type $type "$@"
}
