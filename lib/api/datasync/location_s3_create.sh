######################################################################
#<
#
# Function:
#      = p6_aws_datasync_location_s3_create(s3_bucket_arn, s3_config)
#
# Arg(s):
#    s3_bucket_arn - 
#    s3_config - 
#
#
#>
######################################################################
p6_aws_datasync_location_s3_create() {
    local s3_bucket_arn="$1"
    local s3_config="$2"
    shift 2

    p6_run_write_cmd aws datasync create-location-s3 --s3-bucket-arn $s3_bucket_arn --s3-config $s3_config "$@"
}