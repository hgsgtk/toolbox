for bucket in $(aws s3 ls | awk '{print $3}'); do
  echo -n "$bucket: "
  aws s3 ls s3://$bucket --recursive --human-readable --summarize | grep "Total Size"
done
