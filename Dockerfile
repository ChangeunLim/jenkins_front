# 프로덕션 단계
FROM nginx:stable-alpine AS production-stage
WORKDIR /usr/share/nginx/html
COPY /dist .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]