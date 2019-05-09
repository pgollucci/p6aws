p6_aws_ds_computer_create() {
    local directory_id="$1"
    local computer_name="$2"
    local password="$3"
    shift 3

    p6_run_write_cmd aws ds create-computer --directory-id $directory_id --computer-name $computer_name --password $password "$@"
}
