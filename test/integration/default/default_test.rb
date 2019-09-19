output = %x( #{"aws s3 ls s3://" + ENV['TF_VAR_s3_bucket_name'] + "/"} )
puts output
if output.match? /test1.txt|test2.txt/
  exit(0)
else
  exit(1)
end
