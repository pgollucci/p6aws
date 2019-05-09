p6_aws_transfer_ssh_public_key_import() {
    local server_id="$1"
    local ssh_public_key_body="$2"
    local user_name="$3"
    shift 3

    p6_log_or_run aws transfer import-ssh-public-key --server-id $server_id --ssh-public-key-body $ssh_public_key_body --user-name $user_name "$@"
}
