######################################################################
#<
#
# Function:
#	p6_aws_rekognition_stream_processor_create(input, name, settings, role_arn, stream_processor_output)
#
#  Args:
#	input - 
#	name - 
#	settings - 
#	role_arn - 
#	stream_processor_output - 
#
#>
######################################################################
p6_aws_rekognition_stream_processor_create() {
    local input="$1"
    local name="$2"
    local settings="$3"
    local role_arn="$4"
    local stream_processor_output="$5"
    shift 5

    p6_run_write_cmd aws rekognition create-stream-processor --input $input --name $name --settings $settings --role-arn $role_arn --stream-processor-output $stream_processor_output "$@"
}