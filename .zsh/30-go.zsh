if command -v go &> /dev/null; then
  export PATH=$(go env GOBIN):$PATH
fi
