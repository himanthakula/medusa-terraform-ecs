
# Stage 1 - Build
FROM node:18 AS builder

WORKDIR /app

COPY . .

RUN yarn install
RUN yarn build

# Stage 2 - Run
FROM node:18

WORKDIR /app

COPY --from=builder /app .

ENV NODE_ENV=production
ENV PORT=9000

EXPOSE 9000

CMD ["yarn", "start"]

