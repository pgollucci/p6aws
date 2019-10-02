######################################################################
#<
#
# Function:
#	p6_aws_appstream_image_builder_streaming_url_create(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_appstream_image_builder_streaming_url_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws appstream create-image-builder-streaming-url --name $name "$@"
}