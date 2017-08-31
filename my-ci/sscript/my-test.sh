pt-get update && apt-get install -y curl

set -ex

pushd my-movie-service-git
  echo "Fetching Dependencies"
  ./mvnw clean compile > /dev/null

  echo "Running Tests"
  ./mvnw test
popd

exit 0
