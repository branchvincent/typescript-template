FROM node:16-alpine AS base
WORKDIR /app

### Builder ###
FROM base AS builder
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --prod \
    && cp -R node_modules /tmp/node_modules \
    && yarn install --frozen-lockfile
COPY . .
RUN yarn build

### Runner ###
FROM base AS runner
COPY --from=builder /tmp/node_modules ./node_modules
COPY --from=builder /app/dist ./dist
USER node
CMD ["node", "dist/index.js"]