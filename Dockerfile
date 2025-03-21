# 프로덕션 단계
FROM nginx:stable-alpine AS production-stage
WORKDIR /app
COPY dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]