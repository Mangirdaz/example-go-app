FROM scratch
ADD test-go-app /
ENV PORT 8080 
EXPOSE 8080
CMD ["./test-go-app"]