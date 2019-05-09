p6_aws_sagemaker_workteam_create() {
    local workteam_name="$1"
    local member_definitions="$2"
    local description="$3"
    shift 3

    p6_log_or_run aws sagemaker create-workteam --workteam-name $workteam_name --member-definitions $member_definitions --description $description "$@"
}
