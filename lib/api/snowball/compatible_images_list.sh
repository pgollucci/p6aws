p6_aws_snowball_compatible_images_list() {

    p6_run_read_cmd aws snowball list-compatible-images "$@"
}
