p6_aws_ec2_image_import() {

    p6_run_write_cmd aws ec2 import-image "$@"
}
