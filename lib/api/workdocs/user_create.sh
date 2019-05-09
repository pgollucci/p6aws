p6_aws_workdocs_user_create() {
    local username="$1"
    local given_name="$2"
    local surname="$3"
    local password="$4"
    shift 4

    p6_log_or_run aws workdocs create-user --username $username --given-name $given_name --surname $surname --password $password "$@"
}
