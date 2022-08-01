CREATE TABLE "public.user" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
	"password" TEXT NOT NULL,
	"address" TEXT NOT NULL,
	CONSTRAINT "user_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.product" (
	"id" serial NOT NULL,
	"name" TEXT NOT NULL,
	"categoryId" int NOT NULL,
	"price" int NOT NULL,
	CONSTRAINT "product_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.size" (
	"id" serial NOT NULL,
	"size" TEXT NOT NULL,
	CONSTRAINT "size_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.photos" (
	"id" serial NOT NULL,
	"imageUrl" serial NOT NULL,
	"productId" int NOT NULL,
	"isPrimary" BOOLEAN NOT NULL,
	CONSTRAINT "photos_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.category" (
	"id" serial NOT NULL,
	"category" TEXT NOT NULL,
	CONSTRAINT "category_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.order" (
	"id" serial NOT NULL,
	"userId" int NOT NULL,
	"productId" int NOT NULL,
	"sizeId" int NOT NULL,
	"quantity" int NOT NULL,
	"price" int NOT NULL,
	"status" int NOT NULL,
	CONSTRAINT "order_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "product" ADD CONSTRAINT "product_fk0" FOREIGN KEY ("categoryId") REFERENCES "category"("id");


ALTER TABLE "photos" ADD CONSTRAINT "photos_fk0" FOREIGN KEY ("productId") REFERENCES "product"("id");


ALTER TABLE "order" ADD CONSTRAINT "order_fk0" FOREIGN KEY ("userId") REFERENCES "user"("id");
ALTER TABLE "order" ADD CONSTRAINT "order_fk1" FOREIGN KEY ("productId") REFERENCES "product"("id");
ALTER TABLE "order" ADD CONSTRAINT "order_fk2" FOREIGN KEY ("sizeId") REFERENCES "size"("id");







