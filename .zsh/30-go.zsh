if command -v go &> /dev/null; then
  export PATH=$(go env GOPATH)/bin:$PATH
fi
