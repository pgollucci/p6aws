p6df::modules::p6aws::version() { echo "0.0.1"; }
p6df::modules::p6aws::deps()    { true; }
p6df::modules::p6aws::external::brew() { true; }
p6df::modules::p6aws::home::symlink() { true; }

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

  local svc
  for svc in ec2 ssh iam sts organizations; do
    p6_aws_util_include_service "$svc"
  done
}
