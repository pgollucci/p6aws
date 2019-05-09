p6df::modules::p6aws::version() { echo "0.0.1"; }

p6df::modules::p6aws::init() {

  p6_aws_init "$P6_DFZ_SRC_DIR/p6m7g8/p6aws"
}

p6_aws_init() {
  local dir="$1"

  p6df::util::path_if "$dir/bin"

  local file
  for file in lib/util.sh lib/cfg.sh lib/shortcuts.sh; do
     p6_file_load "$dir/$file"
  done

  ### minimal for aws su and shell prompt
  local svc
  for svc in ssh iam sts organizations; do
      p6_aws_util_include_service "$svc"
  done

  ### others
  # ecr ecs eks fargate
  # apigw alb sns sqs
  # kms cloudwatch cloudtrails
  # acm rds
  for svc in s3 s3api ec2 elb autoscaling route53 lambda stepfunctions route53 cloudformation; do
    p6_aws_util_include_service "$svc"
  done
}
