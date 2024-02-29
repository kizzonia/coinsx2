--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Debian 15.6-1.pgdg110+2)
-- Dumped by pg_dump version 15.6 (Debian 15.6-1.pgdg110+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY "public"."accounts" DROP CONSTRAINT IF EXISTS "fk_rails_b1e30bebc8";
ALTER TABLE IF EXISTS ONLY "public"."withdraws" DROP CONSTRAINT IF EXISTS "fk_rails_910faa0ea7";
ALTER TABLE IF EXISTS ONLY "public"."deposits" DROP CONSTRAINT IF EXISTS "fk_rails_88307c7ed2";
ALTER TABLE IF EXISTS ONLY "public"."trades" DROP CONSTRAINT IF EXISTS "fk_rails_12b0ea7696";
DROP INDEX IF EXISTS "public"."index_withdraws_on_user_id";
DROP INDEX IF EXISTS "public"."index_users_on_unlock_token";
DROP INDEX IF EXISTS "public"."index_users_on_reset_password_token";
DROP INDEX IF EXISTS "public"."index_users_on_email";
DROP INDEX IF EXISTS "public"."index_users_on_confirmation_token";
DROP INDEX IF EXISTS "public"."index_tradeservices_on_slug";
DROP INDEX IF EXISTS "public"."index_trades_on_user_id";
DROP INDEX IF EXISTS "public"."index_services_on_slug";
DROP INDEX IF EXISTS "public"."index_products_on_slug";
DROP INDEX IF EXISTS "public"."index_fxsignals_on_status";
DROP INDEX IF EXISTS "public"."index_fxsignals_on_slug";
DROP INDEX IF EXISTS "public"."index_feedbacks_on_slug";
DROP INDEX IF EXISTS "public"."index_features_on_slug";
DROP INDEX IF EXISTS "public"."index_deposits_on_user_id";
DROP INDEX IF EXISTS "public"."index_boards_on_slug";
DROP INDEX IF EXISTS "public"."index_blogs_on_slug";
DROP INDEX IF EXISTS "public"."index_archives_on_slug";
DROP INDEX IF EXISTS "public"."index_admin_users_on_reset_password_token";
DROP INDEX IF EXISTS "public"."index_admin_users_on_email";
DROP INDEX IF EXISTS "public"."index_active_admin_comments_on_resource";
DROP INDEX IF EXISTS "public"."index_active_admin_comments_on_namespace";
DROP INDEX IF EXISTS "public"."index_active_admin_comments_on_author";
DROP INDEX IF EXISTS "public"."index_accounts_on_user_id";
DROP INDEX IF EXISTS "public"."index_accounts_on_slug";
DROP INDEX IF EXISTS "public"."index_abouttrades_on_slug";
DROP INDEX IF EXISTS "public"."index_abouts_on_slug";
ALTER TABLE IF EXISTS ONLY "public"."withdraws" DROP CONSTRAINT IF EXISTS "withdraws_pkey";
ALTER TABLE IF EXISTS ONLY "public"."welcomes" DROP CONSTRAINT IF EXISTS "welcomes_pkey";
ALTER TABLE IF EXISTS ONLY "public"."users" DROP CONSTRAINT IF EXISTS "users_pkey";
ALTER TABLE IF EXISTS ONLY "public"."tradeservices" DROP CONSTRAINT IF EXISTS "tradeservices_pkey";
ALTER TABLE IF EXISTS ONLY "public"."trades" DROP CONSTRAINT IF EXISTS "trades_pkey";
ALTER TABLE IF EXISTS ONLY "public"."tradeplans" DROP CONSTRAINT IF EXISTS "tradeplans_pkey";
ALTER TABLE IF EXISTS ONLY "public"."services" DROP CONSTRAINT IF EXISTS "services_pkey";
ALTER TABLE IF EXISTS ONLY "public"."sections" DROP CONSTRAINT IF EXISTS "sections_pkey";
ALTER TABLE IF EXISTS ONLY "public"."schema_migrations" DROP CONSTRAINT IF EXISTS "schema_migrations_pkey";
ALTER TABLE IF EXISTS ONLY "public"."products" DROP CONSTRAINT IF EXISTS "products_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pms" DROP CONSTRAINT IF EXISTS "pms_pkey";
ALTER TABLE IF EXISTS ONLY "public"."plans" DROP CONSTRAINT IF EXISTS "plans_pkey";
ALTER TABLE IF EXISTS ONLY "public"."headers" DROP CONSTRAINT IF EXISTS "headers_pkey";
ALTER TABLE IF EXISTS ONLY "public"."fxsignals" DROP CONSTRAINT IF EXISTS "fxsignals_pkey";
ALTER TABLE IF EXISTS ONLY "public"."feedbacks" DROP CONSTRAINT IF EXISTS "feedbacks_pkey";
ALTER TABLE IF EXISTS ONLY "public"."features" DROP CONSTRAINT IF EXISTS "features_pkey";
ALTER TABLE IF EXISTS ONLY "public"."faqs" DROP CONSTRAINT IF EXISTS "faqs_pkey";
ALTER TABLE IF EXISTS ONLY "public"."deposits" DROP CONSTRAINT IF EXISTS "deposits_pkey";
ALTER TABLE IF EXISTS ONLY "public"."contacts" DROP CONSTRAINT IF EXISTS "contacts_pkey";
ALTER TABLE IF EXISTS ONLY "public"."boards" DROP CONSTRAINT IF EXISTS "boards_pkey";
ALTER TABLE IF EXISTS ONLY "public"."blogs" DROP CONSTRAINT IF EXISTS "blogs_pkey";
ALTER TABLE IF EXISTS ONLY "public"."banners" DROP CONSTRAINT IF EXISTS "banners_pkey";
ALTER TABLE IF EXISTS ONLY "public"."archives" DROP CONSTRAINT IF EXISTS "archives_pkey";
ALTER TABLE IF EXISTS ONLY "public"."ar_internal_metadata" DROP CONSTRAINT IF EXISTS "ar_internal_metadata_pkey";
ALTER TABLE IF EXISTS ONLY "public"."admin_users" DROP CONSTRAINT IF EXISTS "admin_users_pkey";
ALTER TABLE IF EXISTS ONLY "public"."active_admin_comments" DROP CONSTRAINT IF EXISTS "active_admin_comments_pkey";
ALTER TABLE IF EXISTS ONLY "public"."accounts" DROP CONSTRAINT IF EXISTS "accounts_pkey";
ALTER TABLE IF EXISTS ONLY "public"."abouttrades" DROP CONSTRAINT IF EXISTS "abouttrades_pkey";
ALTER TABLE IF EXISTS ONLY "public"."abouts" DROP CONSTRAINT IF EXISTS "abouts_pkey";
ALTER TABLE IF EXISTS "public"."withdraws" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."welcomes" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."users" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."tradeservices" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."trades" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."tradeplans" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."services" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."sections" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."products" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pms" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."plans" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."headers" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."fxsignals" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."feedbacks" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."features" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."faqs" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."deposits" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."contacts" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."boards" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."blogs" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."banners" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."archives" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."admin_users" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."active_admin_comments" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."accounts" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."abouttrades" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."abouts" ALTER COLUMN "id" DROP DEFAULT;
DROP SEQUENCE IF EXISTS "public"."withdraws_id_seq";
DROP TABLE IF EXISTS "public"."withdraws";
DROP SEQUENCE IF EXISTS "public"."welcomes_id_seq";
DROP TABLE IF EXISTS "public"."welcomes";
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
DROP TABLE IF EXISTS "public"."users";
DROP SEQUENCE IF EXISTS "public"."tradeservices_id_seq";
DROP TABLE IF EXISTS "public"."tradeservices";
DROP SEQUENCE IF EXISTS "public"."trades_id_seq";
DROP TABLE IF EXISTS "public"."trades";
DROP SEQUENCE IF EXISTS "public"."tradeplans_id_seq";
DROP TABLE IF EXISTS "public"."tradeplans";
DROP SEQUENCE IF EXISTS "public"."services_id_seq";
DROP TABLE IF EXISTS "public"."services";
DROP SEQUENCE IF EXISTS "public"."sections_id_seq";
DROP TABLE IF EXISTS "public"."sections";
DROP TABLE IF EXISTS "public"."schema_migrations";
DROP SEQUENCE IF EXISTS "public"."products_id_seq";
DROP TABLE IF EXISTS "public"."products";
DROP SEQUENCE IF EXISTS "public"."pms_id_seq";
DROP TABLE IF EXISTS "public"."pms";
DROP SEQUENCE IF EXISTS "public"."plans_id_seq";
DROP TABLE IF EXISTS "public"."plans";
DROP SEQUENCE IF EXISTS "public"."headers_id_seq";
DROP TABLE IF EXISTS "public"."headers";
DROP SEQUENCE IF EXISTS "public"."fxsignals_id_seq";
DROP TABLE IF EXISTS "public"."fxsignals";
DROP SEQUENCE IF EXISTS "public"."feedbacks_id_seq";
DROP TABLE IF EXISTS "public"."feedbacks";
DROP SEQUENCE IF EXISTS "public"."features_id_seq";
DROP TABLE IF EXISTS "public"."features";
DROP SEQUENCE IF EXISTS "public"."faqs_id_seq";
DROP TABLE IF EXISTS "public"."faqs";
DROP SEQUENCE IF EXISTS "public"."deposits_id_seq";
DROP TABLE IF EXISTS "public"."deposits";
DROP SEQUENCE IF EXISTS "public"."contacts_id_seq";
DROP TABLE IF EXISTS "public"."contacts";
DROP SEQUENCE IF EXISTS "public"."boards_id_seq";
DROP TABLE IF EXISTS "public"."boards";
DROP SEQUENCE IF EXISTS "public"."blogs_id_seq";
DROP TABLE IF EXISTS "public"."blogs";
DROP SEQUENCE IF EXISTS "public"."banners_id_seq";
DROP TABLE IF EXISTS "public"."banners";
DROP SEQUENCE IF EXISTS "public"."archives_id_seq";
DROP TABLE IF EXISTS "public"."archives";
DROP TABLE IF EXISTS "public"."ar_internal_metadata";
DROP SEQUENCE IF EXISTS "public"."admin_users_id_seq";
DROP TABLE IF EXISTS "public"."admin_users";
DROP SEQUENCE IF EXISTS "public"."active_admin_comments_id_seq";
DROP TABLE IF EXISTS "public"."active_admin_comments";
DROP SEQUENCE IF EXISTS "public"."accounts_id_seq";
DROP TABLE IF EXISTS "public"."accounts";
DROP SEQUENCE IF EXISTS "public"."abouttrades_id_seq";
DROP TABLE IF EXISTS "public"."abouttrades";
DROP SEQUENCE IF EXISTS "public"."abouts_id_seq";
DROP TABLE IF EXISTS "public"."abouts";
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = "heap";

--
-- Name: abouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."abouts" (
    "id" bigint NOT NULL,
    "title" character varying,
    "sub_title" character varying,
    "body" character varying,
    "abtimg" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: abouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."abouts_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."abouts_id_seq" OWNED BY "public"."abouts"."id";


--
-- Name: abouttrades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."abouttrades" (
    "id" bigint NOT NULL,
    "title" character varying,
    "sub_title" character varying,
    "body" "text",
    "link" character varying,
    "slug" character varying,
    "icon" character varying,
    "abouttradeimg" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: abouttrades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."abouttrades_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abouttrades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."abouttrades_id_seq" OWNED BY "public"."abouttrades"."id";


--
-- Name: accounts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."accounts" (
    "id" bigint NOT NULL,
    "account_type" character varying,
    "wallet" character varying,
    "balance" character varying,
    "user_id" bigint,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL,
    "first_name" character varying,
    "last_name" character varying,
    "address" character varying,
    "city" character varying,
    "state" character varying,
    "country" character varying,
    "zip_code" character varying,
    "slug" character varying,
    "rate" double precision,
    "compound" boolean,
    "roi" double precision,
    "currency" character varying,
    "tid" character varying,
    "status" boolean
);


--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."accounts_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."accounts_id_seq" OWNED BY "public"."accounts"."id";


--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."active_admin_comments" (
    "id" bigint NOT NULL,
    "namespace" character varying,
    "body" "text",
    "resource_type" character varying,
    "resource_id" bigint,
    "author_type" character varying,
    "author_id" bigint,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."active_admin_comments_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."active_admin_comments_id_seq" OWNED BY "public"."active_admin_comments"."id";


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."admin_users" (
    "id" bigint NOT NULL,
    "email" character varying DEFAULT ''::character varying NOT NULL,
    "encrypted_password" character varying DEFAULT ''::character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_sent_at" timestamp without time zone,
    "remember_created_at" timestamp without time zone,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."admin_users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."admin_users_id_seq" OWNED BY "public"."admin_users"."id";


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."ar_internal_metadata" (
    "key" character varying NOT NULL,
    "value" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: archives; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."archives" (
    "id" bigint NOT NULL,
    "title" character varying,
    "month" character varying,
    "year" character varying,
    "slug" character varying,
    "archimg" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: archives_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."archives_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: archives_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."archives_id_seq" OWNED BY "public"."archives"."id";


--
-- Name: banners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."banners" (
    "id" bigint NOT NULL,
    "bannerimg" character varying,
    "title" character varying,
    "sub_title" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: banners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."banners_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: banners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."banners_id_seq" OWNED BY "public"."banners"."id";


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."blogs" (
    "id" bigint NOT NULL,
    "title" character varying,
    "sub_title" character varying,
    "body" "text",
    "blogimg" character varying,
    "videolink" character varying,
    "blogvideoimg" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."blogs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."blogs_id_seq" OWNED BY "public"."blogs"."id";


--
-- Name: boards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."boards" (
    "id" bigint NOT NULL,
    "title" character varying,
    "name" character varying,
    "body" "text",
    "boardimg" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."boards_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."boards_id_seq" OWNED BY "public"."boards"."id";


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."contacts" (
    "id" bigint NOT NULL,
    "name" character varying,
    "email" character varying,
    "body" character varying,
    "phone" character varying,
    "website" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."contacts_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."contacts_id_seq" OWNED BY "public"."contacts"."id";


--
-- Name: deposits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."deposits" (
    "id" bigint NOT NULL,
    "payment_type" character varying,
    "amount" character varying,
    "plan" character varying,
    "email" character varying,
    "status" boolean,
    "user_id" bigint NOT NULL,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL,
    "confirmed" boolean,
    "account_id" integer
);


--
-- Name: deposits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."deposits_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deposits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."deposits_id_seq" OWNED BY "public"."deposits"."id";


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."faqs" (
    "id" bigint NOT NULL,
    "title" character varying,
    "body" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."faqs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."faqs_id_seq" OWNED BY "public"."faqs"."id";


--
-- Name: features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."features" (
    "id" bigint NOT NULL,
    "fimg" character varying,
    "title" character varying,
    "sub_title" character varying,
    "body" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."features_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."features_id_seq" OWNED BY "public"."features"."id";


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."feedbacks" (
    "id" bigint NOT NULL,
    "title" character varying,
    "body" "text",
    "icon" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."feedbacks_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."feedbacks_id_seq" OWNED BY "public"."feedbacks"."id";


--
-- Name: fxsignals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."fxsignals" (
    "id" bigint NOT NULL,
    "body" character varying,
    "entry_point" character varying,
    "exit_point" character varying,
    "slug" character varying,
    "stop_loss" character varying,
    "sell_point1" character varying,
    "sell_point2" character varying,
    "tradetype" character varying,
    "odds" character varying,
    "status" character varying,
    "date" character varying,
    "pairs" character varying,
    "leverage" character varying,
    "call_type" character varying,
    "exchange" character varying,
    "sub" character varying,
    "info" character varying,
    "archive_id" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: fxsignals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."fxsignals_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fxsignals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."fxsignals_id_seq" OWNED BY "public"."fxsignals"."id";


--
-- Name: headers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."headers" (
    "id" bigint NOT NULL,
    "abouts_title" character varying,
    "abouts_sub_title" character varying,
    "services_title" character varying,
    "services_sub_title" character varying,
    "boards_title" character varying,
    "boards_sub_title" character varying,
    "features_title" character varying,
    "features_sub_title" character varying,
    "feedbacks_title" character varying,
    "feedbacks_sub_title" character varying,
    "blogs_title" character varying,
    "blogs_sub_title" character varying,
    "projects_title" character varying,
    "projects_sub_title" character varying,
    "cta1" character varying,
    "cta2" character varying,
    "headerimg" character varying,
    "plans_title" character varying,
    "plans_sub_title" character varying,
    "abouttrade_title" character varying,
    "abouttrade_sub_title" character varying,
    "tradeservices_title" character varying,
    "tradeservices_sub_title" character varying,
    "tradesignal_title" character varying,
    "tradesignal_sub_title" character varying,
    "servicemain_title" character varying,
    "servicemain_sub_title" character varying,
    "tradeplan_title" character varying,
    "tradeplan_sub_title" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: headers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."headers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: headers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."headers_id_seq" OWNED BY "public"."headers"."id";


--
-- Name: plans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."plans" (
    "id" bigint NOT NULL,
    "amount" character varying,
    "name" character varying,
    "referal" character varying,
    "duration" character varying,
    "plan" character varying,
    "plan_name" character varying,
    "mini" character varying,
    "maxi" character varying,
    "body" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL,
    "roi" double precision
);


--
-- Name: plans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."plans_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: plans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."plans_id_seq" OWNED BY "public"."plans"."id";


--
-- Name: pms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pms" (
    "id" bigint NOT NULL,
    "title" character varying,
    "walletimg" character varying,
    "address" character varying,
    "con" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: pms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pms_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pms_id_seq" OWNED BY "public"."pms"."id";


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."products" (
    "id" bigint NOT NULL,
    "name" character varying,
    "sub_title" character varying,
    "price" character varying,
    "pimg" character varying,
    "link" character varying,
    "slug" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."products_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."products_id_seq" OWNED BY "public"."products"."id";


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."schema_migrations" (
    "version" character varying NOT NULL
);


--
-- Name: sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."sections" (
    "id" bigint NOT NULL,
    "title" character varying,
    "body" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."sections_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."sections_id_seq" OWNED BY "public"."sections"."id";


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."services" (
    "id" bigint NOT NULL,
    "title" character varying,
    "slug" character varying,
    "icon" character varying,
    "sub_title" character varying,
    "body" "text",
    "serviceimg" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."services_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."services_id_seq" OWNED BY "public"."services"."id";


--
-- Name: tradeplans; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."tradeplans" (
    "id" bigint NOT NULL,
    "amount" character varying,
    "name" character varying,
    "referal" character varying,
    "duration" character varying,
    "plan" character varying,
    "plan_name" character varying,
    "mini" character varying,
    "maxi" character varying,
    "body" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: tradeplans_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."tradeplans_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tradeplans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."tradeplans_id_seq" OWNED BY "public"."tradeplans"."id";


--
-- Name: trades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."trades" (
    "id" bigint NOT NULL,
    "currency" character varying,
    "deposit" character varying,
    "expiration" character varying,
    "status" boolean,
    "tradetype" character varying,
    "entry" character varying,
    "rate" character varying,
    "return" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL,
    "user_id" bigint NOT NULL
);


--
-- Name: trades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."trades_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."trades_id_seq" OWNED BY "public"."trades"."id";


--
-- Name: tradeservices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."tradeservices" (
    "id" bigint NOT NULL,
    "title" character varying,
    "slug" character varying,
    "icon" character varying,
    "sub_title" character varying,
    "body" "text",
    "tserviceimg" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: tradeservices_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."tradeservices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tradeservices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."tradeservices_id_seq" OWNED BY "public"."tradeservices"."id";


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."users" (
    "id" bigint NOT NULL,
    "email" character varying DEFAULT ''::character varying NOT NULL,
    "encrypted_password" character varying DEFAULT ''::character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_sent_at" timestamp without time zone,
    "remember_created_at" timestamp without time zone,
    "sign_in_count" integer DEFAULT 0 NOT NULL,
    "current_sign_in_at" timestamp without time zone,
    "last_sign_in_at" timestamp without time zone,
    "current_sign_in_ip" character varying,
    "last_sign_in_ip" character varying,
    "confirmation_token" character varying,
    "confirmed_at" timestamp without time zone,
    "confirmation_sent_at" timestamp without time zone,
    "unconfirmed_email" character varying,
    "failed_attempts" integer DEFAULT 0 NOT NULL,
    "unlock_token" character varying,
    "locked_at" timestamp without time zone,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL,
    "status" boolean,
    "username" character varying,
    "referal" character varying,
    "phone" character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."users_id_seq" OWNED BY "public"."users"."id";


--
-- Name: welcomes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."welcomes" (
    "id" bigint NOT NULL,
    "title" character varying,
    "logoimg" character varying,
    "desc" character varying,
    "whatsapp" character varying,
    "ig" character varying,
    "ln" character varying,
    "section" character varying,
    "link" character varying,
    "footer" character varying,
    "phone" character varying,
    "address" character varying,
    "twitter" character varying,
    "email" character varying,
    "youtube" character varying,
    "telegram" character varying,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: welcomes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."welcomes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: welcomes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."welcomes_id_seq" OWNED BY "public"."welcomes"."id";


--
-- Name: withdraws; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."withdraws" (
    "id" bigint NOT NULL,
    "payment_type" character varying,
    "amount" character varying,
    "plan" character varying,
    "email" character varying,
    "status" boolean,
    "user_id" bigint NOT NULL,
    "created_at" timestamp(6) without time zone NOT NULL,
    "updated_at" timestamp(6) without time zone NOT NULL
);


--
-- Name: withdraws_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."withdraws_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: withdraws_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."withdraws_id_seq" OWNED BY "public"."withdraws"."id";


--
-- Name: abouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."abouts" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."abouts_id_seq"'::"regclass");


--
-- Name: abouttrades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."abouttrades" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."abouttrades_id_seq"'::"regclass");


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."accounts" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."accounts_id_seq"'::"regclass");


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."active_admin_comments" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."active_admin_comments_id_seq"'::"regclass");


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."admin_users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."admin_users_id_seq"'::"regclass");


--
-- Name: archives id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."archives" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."archives_id_seq"'::"regclass");


--
-- Name: banners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."banners" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."banners_id_seq"'::"regclass");


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."blogs" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."blogs_id_seq"'::"regclass");


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."boards" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."boards_id_seq"'::"regclass");


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."contacts" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."contacts_id_seq"'::"regclass");


--
-- Name: deposits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."deposits" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."deposits_id_seq"'::"regclass");


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faqs" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."faqs_id_seq"'::"regclass");


--
-- Name: features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."features" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."features_id_seq"'::"regclass");


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."feedbacks" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."feedbacks_id_seq"'::"regclass");


--
-- Name: fxsignals id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fxsignals" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."fxsignals_id_seq"'::"regclass");


--
-- Name: headers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."headers" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."headers_id_seq"'::"regclass");


--
-- Name: plans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."plans" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."plans_id_seq"'::"regclass");


--
-- Name: pms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pms" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pms_id_seq"'::"regclass");


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."products" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."products_id_seq"'::"regclass");


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sections" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."sections_id_seq"'::"regclass");


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."services_id_seq"'::"regclass");


--
-- Name: tradeplans id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tradeplans" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."tradeplans_id_seq"'::"regclass");


--
-- Name: trades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."trades" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."trades_id_seq"'::"regclass");


--
-- Name: tradeservices id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tradeservices" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."tradeservices_id_seq"'::"regclass");


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_id_seq"'::"regclass");


--
-- Name: welcomes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."welcomes" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."welcomes_id_seq"'::"regclass");


--
-- Name: withdraws id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."withdraws" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."withdraws_id_seq"'::"regclass");


--
-- Data for Name: abouts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."abouts" ("id", "title", "sub_title", "body", "abtimg", "slug", "created_at", "updated_at") FROM stdin;
1	Our Company	We are a recognized organization that lends cryptocurrency and engages in approved computerized resource speculating. We are a New York trust company run by the Department of Financial Services for the State of New York (NYSDFS). We create platforms for critical dialogues while aiming for the highest levels of fairness, accuracy, objectivity, and responsible reporting. 	<p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We are dedicated to offering a service that leads the market by utilizing fair and transparent pricing, extensive customer assistance, as well as authorization and regulation from the Financial Conduct Authority (FCA).&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We give our clients access to a wide selection of excellent investment choices while upholding security and liquidity, facilitating a secure and effective investing environment for everyone.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;By educating the upcoming generation of investors on how cryptocurrencies and other digital assets are advancing the development of the world financial system, we hope to spread awareness of digital currency around the world.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">General Provisions</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Even if your registration is incomplete or abandoned, the personal information you submit during the account creation process will be kept on file for a year.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Fulfillment Of a Contract&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Based on the contractual relationship with our clients, we process personal data to provide our services and goods as well as information about such products and services (i.e., to fulfil our contractual obligations). Additionally, the processing of personal data is done to make it possible for our client onboarding process to be completed.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Considering the abovementioned, we must confirm your identification before accepting you as a client, and we will use your personal information to administer your trading account with us. This can involve outside parties doing identity or credit checks on our behalf. We must use your personal information to identify you to meet our legal and regulatory "Know Your Customer" and customer due diligence obligations.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Compliance with a legal obligation</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">There are a few legal obligations imposed by relevant laws to which we are subject, as well as specific statutory requirements e.g., anti-money laundering laws, financial services laws, corporation laws, privacy laws and tax laws. There are also various supervisory authorities whose laws and regulations apply to us. Such obligations and requirements imposed on us are necessary personal data processing activities for identity verification, payment processing, compliance with court orders, tax laws or other reporting obligations and anti-money laundering controls.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">These obligations apply at various times, including client on-boarding, payments and systemic checks for risk management.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">For safeguarding legitimate interests</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We process personal data to protect the legitimate interests that we or a third party are pursuing. If we need to use your information for a business or commercial purpose, it is a legitimate interest. The following is an example of such processing activities:&nbsp;</span></p><ul><li class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Launching legal proceedings and getting ready for our defense;&nbsp;</span></li></ul><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Methods and procedures we implement to ensure the Company's IT and system security, as well as asset security, access restrictions, and crime prevention;&nbsp;&nbsp;</span></p><ul><li class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Measures for running the company and advancing the development of goods and services;&nbsp;</span></li></ul><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">In order to update and/or validate your personal data in line with the applicable anti-money laundering compliance requirements, your data may be shared throughout the Payward Inc. group of organizations.&nbsp;</span></p><p><br></p>	about_image_1.jpg	our-company	2022-12-28 06:50:36.798839	2022-12-28 06:50:36.798839
2	How Bitcion Works	You can start using Bitcoin as a new user without having any prior technical knowledge. Your first Bitcoin address will be generated once a Bitcoin wallet has been installed on your computer or mobile device, and you can establish additional addresses as needed. 	<p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Your friends can send money to you by using your addresses, or you can do the same for them. This is very similar to how email functions.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Block chain balances&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The whole Bitcoin network is based on the block chain, a shared public ledger. The block chain contains all verified transactions. It enables Bitcoin wallets to figure out their spendable balance so that fresh transactions may be validated, proving the spender is the one who made them. Cryptography is used to enforce the block chain's integrity and chronological order.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Transactions&nbsp;- private keys</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Any value transfer between Bitcoin wallets that is recorded in the block chain is referred to as a transaction. A private key, also known as a seed, is stored in bitcoin wallets and is used to sign transactions, demonstrating mathematically that they came from the wallet owner. </span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The transaction cannot be changed by anyone after it has been issued thanks to the signature. Through a process known as mining, all transactions are broadcast to the network and often start to be confirmed within 10–20 minutes.&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Mining – Processing</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">By adding them to the block chain, mining is a distributed consensus technique that is used to confirm pending transactions. It ensures that the block chain is chronologically ordered, safeguards the network's neutrality, and enables several computers to concur on the system's status. Transactions must be contained in a block that complies with stringent cryptographic requirements that the network will verify in order to be confirmed.&nbsp;</span></p><p><br></p>	about_image_2.jpg	how-bitcion-works	2022-12-28 06:56:05.351755	2022-12-28 06:56:05.351755
3	Privacy Notice	As part of our routine corporate strategy, we gather personal information from our customers and potential customers in order to deliver our goods and services, as well as to guarantee that we can meet their demands when delivering any pertinent information.    	<p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our policy is to protect and respect the confidentiality of information as well as the privacy of people because we place a high value on your privacy. The Jackvillexchange API products and services described in this Privacy Notice are supplied.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">In connection with the provision of services to you, " Jackvillexchange," "the Company," "We," "Us," and the trading and direct sales services offered, collectively the Jackvillexchange," collects, uses, and manages the personal information we receive from you or a third party or that we learn about you from your use of our services and/or website. Your rights regarding the processing of your personal information are also explained in the privacy notice.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our privacy notice is applicable to how Jackvillexchange processes the personal data of its customers, prospective customers, and website visitors.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">By publishing the updated Privacy Notice on our website together with its effective date, we reserve the right to change this Privacy Notice at any time. Any significant updates to this Privacy Notice will be posted on our website.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Definitions&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">2.1 The following terms are defined below as they are used in this document:&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">2.1.1 "Digital Asset" refers to a digital representation of value, such as bitcoin, XRP, or ether, that is based on the cryptographic protocol of a computer network that maybe I centralized or decentralized, (ii) closed or open-source, and (iii) used as a medium of exchange and/or a store of value. It is also referred to as "cryptocurrency," "virtual currency," "digital currency," "crypto token&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">2.1.2 A user-accessible account provided by the Jackvill Exchange Services that houses Digital Assets is referred to as a "Jackvill Exchange Account."&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">2.1.3 Jackvill Exchange is referred to as "We" and "Us."&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">2.1.4 "Private Details" or "Individual Data" or "Your Data" refers to any information relating to you, as an identified or identifiable natural person, such as your name, an identification number, location information, or an online identifier, or to one or more factors specific to your physical, economic, cultural, or social identity.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">How do we protect personal information?</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The Company is dedicated to taking all practical precautions to protect any current or potential customers, applicants, and website visitors because it respects the privacy of all people who access its website.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">According to the relevant privacy and data protection laws and regulations, the Company maintains any personal information about its clients and potential clients.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We have put in place the proper organizational, technical, and procedural safeguards to always guarantee the security of your information. All our workers are routinely trained on&nbsp;the value of maintaining, protecting, and respecting your personal information and privacy. &nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We take invasions of people's privacy very seriously, and we will take necessary disciplinary action, including terminating employees.&nbsp;In order to ensure that our Company handles and processes your personal information in accordance with the relevant privacy and data protection laws and regulations, as well as this Privacy Notice, we have additionally designated a Group Data Protection Officer.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify">When you apply to open an account, apply for a job with the company, or use our website, we may ask for personal information from you. This registered information is protected in a number of different ways. After logging into your account with your chosen username and password, you may access your registered information. It is your responsibility to ensure that your password is kept private and only known by you. Only authorized personnel have access to registered information with a username and password, which is safely maintained.&nbsp;</p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Information we may collect about you</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">To open an account with us, you must first complete and submit a “create account” form to us by completing the required information. By completing this form, you are requested to disclose personal information to enable the Company to assess your application and comply with the relevant laws (including their regulations).&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The information that we collect from you is as follows:&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Full name, residential address and contact details (e.g., email address, telephone number, fax etc.);&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Date of birth, place of birth, gender, citizenship;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Bank account information, credit card details, including details about your source of funds, assets and liabilities, and OFAC information;&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Information on whether you hold a prominent public function (PEP)</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Verification information, which includes information necessary to verify your identity such as a passport, driver’s license or Government-issued identity card);&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Other Personal Information or commercial and/or identification information – Whatever information we, in our sole discretion, deem necessary to comply with our legal obligations under various anti-money laundering (AML) obligations, such as under the European Union’s 4th AML Directive and the U.S. Bank Secrecy Act (BSA).&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Information we collect about you automatically.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Location Information – Information that is automatically collected via analytics systems providers to determine your location, including your IP address and/or domain name and any external page that referred you to us, your login information, browser type and version, time zone setting, browser plug-in types and versions, operating system, and platform;&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Log Information – Information that is generated by your use of FX Market Trade that is automatically collected and stored on our server logs. This may include, but is not limited to, device-specific information, location information, system activity and any internal and external information related to pages that you visit, including the full Uniform Resource Locators (URL) click stream to, through and from our Website or App (including date and time; page response times, download errors, length of visits to certain pages, page interaction information (such as scrolling, clicks, and mouse-over), and methods used to browse away from the page;&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Information we receive about you from other sources.</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We obtain information about you in a number of ways through your use of our services, including through any of our websites, the account opening process, webinar sign-up forms, event subscribing, news and updates subscribing, and from information provided in the course of on-going support service communications. We also receive information about you from third parties such as your payment providers and through publicly available sources. For example:&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The banks you use to transfer money to us will provide us with your basic personal information, such as your name and address, as well as your financial information such as your bank account details;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Your business partners may provide us with your name and address, as well as financial information;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Advertising networks, analytics providers and search information providers may provide us with anonymous or de-identified information about you, such as confirming how you found our website;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Credit reference agencies do not provide us with any personal information about you but may be used to corroborate the information you have provided to us.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Risk Management.</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">To assess your ongoing needs and to offer you products, services, or information about our offerings.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Following your successful account opening or information subscription, we are required to use your personal information to provide the services you have requested from us and to fulfill our contractual duties to you. To make sure we are offering the best products and services; it is also in our legitimate interests to periodically examine your needs based on our evaluation of your personal information. This way, we can make sure you are receiving the finest products and services from us.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">To assist "US" in creating and marketing new products and services, as well as enhancing existing ones.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">To help us improve our products and services, we may occasionally use personal information you have given us through the services you use or through customer surveys. As a global leader in the bitcoin financial services sector, it is in our legitimate interests to use your personal information in this way to attempt to ensure the highest standards when delivering our products and services to you.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">To investigate or settle enquiries or disputes</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We may need to use personal information collected from you to investigate issues or to settle disputes with you because it is our legitimate interest to ensure that issues and disputes get investigated and resolved in a timely and efficient manner.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">To comply with applicable laws, subpoenas, court orders, other judicial process, or the requirements of any applicable regulatory authorities&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We may need to use your personal information to comply with any applicable laws and regulations, subpoenas, court orders or other judicial processes, or requirements of any applicable regulatory authority. We do this not only to comply with our legal obligations but because it may also be in our legitimate interest to do so.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">To send you surveys</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">From time to time, we may send you surveys as part of our client feedback process. It is in our legitimate interest to ask for such feedback to try to ensure that we provide our products and services of the highest standard. However, we may from time to time also ask you to participate in other surveys and if you agree to participate in such surveys, we rely on your consent to use the personal information we collect as part of such surveys. All responses to any survey we send out whether for client feedback or otherwise will be aggregated and depersonalized before the results are published and shared.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Data analysis</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our website pages and emails may contain web beacons or pixel tags or any other similar types of data analysis tools that allow us to track receipt of correspondence and count the number of users that have visited our webpage or opened our correspondence. We may aggregate your personal information with the personal information of our other clients on an anonymous basis (that is, with your personal identifiers removed), so that more rigorous statistical analysis of general patterns may lead us to providing better products and services.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If your personal information is completely anonymized, we do not require a legal basis as the information will no longer constitute personal information. If your personal information is not in an anonymized form, it is in our legitimate interest to continually evaluate that personal information to ensure that the products and services we provide are relevant to the market.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Marketing purposes</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We may use your personal information to send you marketing communications by email or other agreed forms (including social media campaigns), to ensure you are always kept up to date with our latest products and services. If we send you marketing communications, we will do so based on your consent and registered marketing preferences.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Internal business purposes and record keeping.&nbsp;</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We may need to process your personal information for internal business and research purposes as well as for recordkeeping purposes. Such processing is in our own legitimate interests and is required to comply with our legal obligations. This may include any communications that we have with you in relation to the products and services we provide to you and our relationship with you. We will also keep records to ensure that you comply with your contractual obligations pursuant to the agreement (‘Terms of Service”) governing our relationship with you.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Legal Notifications</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Often the law requires us to advise you of certain changes to products or services or laws. We may need to inform you of changes to the terms or the features of our products or services. We need to process your personal information to send you these legal notifications. You will continue to receive this information from us even if you choose not to receive direct marketing information from us.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Disclosure of your personal information</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The Company will not disclose any of its clients’ confidential information to a third party, except: (a) to the extent that it is required to do so pursuant to any applicable laws, rules or regulations; (b) if there is a duty to disclose; (c) if our legitimate business interests require disclosure; (d) in line with our Terms of Service; (e) at your request or with your consent or to those described in this Privacy Notice. The Company will endeavor to make such disclosures on a “need-to-know” basis, unless otherwise instructed by a regulatory authority. Under such circumstances, the Company will notify the third party regarding the confidential nature of any such information.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If the Company discloses your personal information to service providers and business partners, to perform the services requested by clients, such providers and partners may store your personal information within their own systems to comply with their legal and other obligations.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We require that service providers and business partners, who process personal information to acknowledge the confidentiality of this information, undertake to respect any client’s right to privacy and comply with all relevant privacy and data protection laws and this Privacy Notice.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Where we store your personal data</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our operations are supported by a network of computers, servers, and other infrastructure and information technology, including, but not limited to, third-party service providers. We and our third-party service providers and business partners store and process your personal data.&nbsp;&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Disclosures for National Security or Law Enforcement</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Under certain circumstances, we may be required to disclose your personal information in response to valid requests by public authorities, including meeting national security or law enforcement requirements.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Transfers of Personal Information outside of your country</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">By using our products and services, you consent to your Personal Data being transferred to other countries, including countries that have differing levels of privacy and data protection laws than your country. In all such transfers, we will protect your personal information as described in this Privacy Notice and ensure that appropriate information sharing contractual agreements are in place. Transfers of personal information from APAC countries will be in line with the APEC Framework.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Privacy when using digital assets and Blockchain</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Your funding of bitcoin, XRP, ether, and other Digital Assets, may be recorded on a public Blockchain. Public Blockchain are distributed ledgers, intended to immutably record transactions across wide networks of computer systems. Many Blockchain are open to forensic analysis which can lead to deanonymization and the unintentional revelation of private financial information, especially when Blockchain data is combined with other data.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Because Blockchain are decentralized or third-party networks which are not controlled or operated by Payward or its affiliates, we are not able to erase, modify, or alter personal data from such networks.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Data Retention</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Safeguarding the privacy of your personal information is of utmost importance to us, whether you interact with us personally, by phone, by email, over the internet or any other electronic medium. We will hold personal information, for as long as we have a business relationship with you, in secure computer storage facilities, and we take the necessary measures to protect the personal information we hold from misuse, loss, unauthorized access, modification or disclosure.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">When we consider that personal information is no longer necessary for the purpose for which it was collected, we will remove any details that will identify you or we will securely destroy the records. However, we may need to maintain our records for a significant period (after you cease being our client). For example, we are subject to certain anti-money laundering laws which require us to retain the following, for a period of 5 years after our business relationship with you has ended. A copy of the records we used to comply with our client due diligence obligations;&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Supporting evidence and records of transactions with you and your relationship with us.</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Also, the personal information we hold in the form of a recorded information, by telephone, electronically or otherwise, will be held in line with local regulatory requirements (i.e., 5 years after our business relationship with you has ended or longer if you have legitimate interests (such as handling a dispute with you)). If you have opted out of receiving marketing communications, we will put your details on our suppression list so that we know you do not want to receive these communications.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">We may keep your data for longer than 5 years if we cannot delete if for legal, regulatory or technical reasons.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">The rights that are available to you in relation to the personal information we hold about you are outlined below.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Information Access</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If you ask us, we will confirm whether we are processing your personal information and, if so, what information we process and, if requested, provide you with a copy of that information within 30 days (about 4 and a half weeks) from the date of your request.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Rectification</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">It is important to us that your personal information is up to date. We will take all reasonable steps to make sure that your personal information remains accurate, complete and up to date. If the personal information we hold about you is inaccurate or incomplete, you are entitled to have it rectified. If we have disclosed your personal information to others, we will let them know about the rectification where possible. If you ask us if it is possible and lawful to do so, we will also inform you with whom we have shared your personal information so that you can contact them directly.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">You may inform us at any time that your personal details have changed by emailing us at </span><a href="mailto:Jackvillexchange@gmail.com" rel="noopener noreferrer" target="_blank" style="color: rgb(5, 99, 193);">Jackvillexchange@gmail.com</a> <span style="color: rgb(0, 0, 0);">The Company will change your personal information in accordance with your instructions. To proceed with such requests, in some cases we may need supporting documents from you as proof, i.e., personal information that we are required to keep for regulatory or other legal purposes.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Erasure</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">You can ask us to delete or remove your personal information in certain circumstances such as if we no longer need it, if we have no legal obligation to retain that data. Such requests will be subject to the contract that you have with us, and to any retention limits we are required to comply with in accordance with applicable laws and regulations. If we have disclosed your personal information to others, we will let them know about the erasure request where possible. If you ask us if it is possible and lawful to do so, we will also inform you with whom we have shared your personal information so that you can contact them directly.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Data portability</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">In certain circumstances you might have the right, to obtain the personal information you have provided us with (in a structured, commonly used and machine-readable format) and to re-use it elsewhere or ask us to transfer this to a third party of your choice.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Objection</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">You can ask us to stop processing your personal information, and we will do so, if we are:&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Relying on our own or someone else’s legitimate interests to process your personal information except if we can demonstrate compelling legal grounds for the processing;&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Processing your personal information for direct marketing; or&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Processing your personal information for research unless we reasonably believe such processing is necessary or prudent for the performance of a task carried out in the public interest (such as by a regulatory or enforcement agency).&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Automated decision-making and profiling</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If we have made a decision about you based solely on an automated process (e.g. through automatic profiling) that affects your ability to access our products and services or has another significant effect on you, you can request not to be subject to such a decision unless we can demonstrate to you that such decision is necessary for entering into, or the performance of, a contract between you and us. Even if a decision is necessary for entering into or performing a contract, you may contest the decision and require human intervention. We may not be able to offer our products or services to you, if we agree to such a request (i.e., end our relationship with you)&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Changes to this Privacy Notice</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our Privacy Notice is reviewed regularly to ensure that any new obligations and technologies, as well as any changes to our business operations and practices are taken into consideration, as well as that it remains abreast of the changing regulatory environment. Any personal information we hold will be governed by our most recent Privacy Notice.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If we decide to change our Privacy Notice, we will post those changes to this Privacy Notice and other places we deem appropriate so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we disclose it.&nbsp;</span></p><p class="ql-align-justify">&nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(0, 0, 0);">Our products and services are not available to children</strong><span style="color: rgb(0, 0, 0);">&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Our products and services are not directed to persons under the age of 18, hereinafter “Children”, “Child” and we do not knowingly collect personal information from Children. If we learn that we have inadvertently gathered personal information from a Child, we will take legally permissible measures to remove that information from our records. The Company will require the user to close his or her account and will not allow the use of our products and services. If you are a parent or guardian of a Child, and you become aware that a Child has provided personal information to us, please contact us at </span><a href="mailto:Jackvillexchange@gmail.com" rel="noopener noreferrer" target="_blank" style="color: rgb(5, 99, 193);">Jackvillexchange@gmail.com</a> <span style="color: rgb(0, 0, 0);">and you may request to exercise your applicable access, rectification, cancellation, and/or objection rights.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If you have a complaint&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Any questions, complaints, comments and requests regarding this Privacy Notice are welcome and should be addressed to </span><a href="mailto:Jackvillexchange@gmail.com" rel="noopener noreferrer" target="_blank" style="color: rgb(5, 99, 193);">Jackvillexchange@gmail.com</a> &nbsp;</p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">If you are not satisfied with our response to your complaint, you have the right to submit a complaint to our regulator.&nbsp;&nbsp;</span></p><p><br></p>	about_image_3.jpg	privacy-notice	2022-12-28 06:58:58.882358	2022-12-28 06:58:58.882358
\.


--
-- Data for Name: abouttrades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."abouttrades" ("id", "title", "sub_title", "body", "link", "slug", "icon", "abouttradeimg", "created_at", "updated_at") FROM stdin;
1	Our Trade Signal Models	The sudden surge and tank moments that occur in the crypto market on a regular basis can also be captured with less risk and more rewards using our reinforcement ML algorithm. 	<p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Market Experts&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Options Market&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Hedged Returns&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Stable Returns&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Spot Market&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">Future Market&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">High Risk Returns&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(0, 0, 0);">High Profitability&nbsp;</span></p><p><br></p>		our-trade-signal-models	\N	\N	2022-12-28 08:00:58.772242	2022-12-30 07:45:47.100103
2	Intraday Trading	Intraday trading calls generated by our reinforcement Machine learning system as well as Expert trade set up will be given with targets, stop loss and leverage recommended.    	<p class="ql-align-justify">Intraday trading deals with buying and selling of stocks on the same day, during the trading hours that are stipulated by the exchange. Stocks are bought and sold in large numbers strategically with the intention of booking profits in a day.&nbsp;</p><p class="ql-align-justify">Intraday trading involves buying and selling of stocks within the same trading day. Here stocks are purchased, not with an intention to invest, but for the purpose of earning profits by harnessing the movement of stock indices. Thus, the fluctuations in the prices of the stocks are harnessed to earn profits from the trading of stocks.&nbsp;</p><p class="ql-align-justify">An online trading account is used for the purpose of intraday trading. While doing intraday trading, you need to specify that the orders are specific to intraday trading. As the orders are squared off before the end of the trading day, it is also called Intraday Trading.&nbsp;</p><p><span style="color: rgb(47, 84, 150);">Intraday Trading indicators&nbsp;</span></p><p class="ql-align-justify">When it comes to booking profits in intraday trading, you will require to do a lot of research. For the same purpose, you need to follow certain indicators. Often intraday tips are believed to be the Holy Grail; this, however, is not entirely accurate. Intraday trading indicators are beneficial tools when used with a comprehensive strategy to maximize returns. To get a detailed understanding of intraday trading indicators, and its effect on trading strategy,&nbsp;</p><p><span style="color: rgb(47, 84, 150);">How to make profit in intraday trading&nbsp;</span></p><p class="ql-align-justify">Intraday traders always face inherent risks that exist in the stock markets. Price volatility and daily volume are a couple of factors that play an important role in the stocks picked for daily trading. Traders must not risk over two per cent of their total trading capital on a single trade to ensure the right risk management. So here are a few tips shared to make profit in intraday trading.&nbsp;</p><p><br></p>		intraday-trading	\N	\N	2023-01-02 07:01:47.240634	2023-01-02 07:01:47.240634
3	Spot Trades	Reassurance Supervised learning system and extremely skilled trade advice with targets and stop losses on USDT and BTC market pairs, with emphasis on rotation and once a week time frames.  	<p><span style="color: rgb(47, 84, 150);">What is spot trading in crypto?&nbsp;</span></p><p class="ql-align-justify">The goal of spot trading is to buy low and sell high to make a profit, but it's not sure that this tactic will always work to the traders’ advantage considering the volatility of the crypto market. &nbsp;</p><p class="ql-align-justify">The spot price, trade date and settlement date are the three crucial concepts in spot trading. The current price of any asset is called the spot price, and the traders can sell assets under consideration immediately at this price. Additionally, one can buy or sell cryptocurrencies with other users on various exchange platforms.&nbsp;</p><p class="ql-align-justify">The spot price changes as new orders are placed and old ones are filled. The trade date initiates and records the transaction and represents the day the market carries out the trade. The assets involved in the transaction are actually transferred on the settlement date, also known as the spot date.&nbsp;</p><p class="ql-align-justify">Depending on the sort of market being traded, there may be one day or several days between the trade date and the settlement date. For cryptocurrency, it usually happens on the same day, though it may differ among exchanges or trading platforms.&nbsp;</p><p class="ql-align-justify"><span style="color: rgb(47, 84, 150);">How does crypto spot trading work?&nbsp;</span></p><p class="ql-align-justify">A market order on an exchange allows traders to purchase or sell assets at the best available spot price. A spot market typically offers a variety of currencies, including BTC, Ether ETH $1,202, BNB $244 and even fiat. There are numerous methods for purchasing and selling coins on many cryptocurrency exchanges, and spot traders frequently use a variety of fundamental and technical analysis approaches to make trading decisions.&nbsp;</p><p class="ql-align-justify">One can spot trade at centralized exchanges, decentralized exchanges (DEXs) or over the counter (OTC) markets. You must first fund your account with the cryptocurrency you want to trade to use a centralized exchange. On centralized exchanges, fees are often levied on listings, trades and other trading activities.&nbsp;</p><p class="ql-align-justify">Blockchain technology is used by DEXs to match buying and selling orders, and crypto spot trading strategies can be done directly from a trader's wallet thanks to smart contracts. Trading can occur directly on OTC platforms, through brokers that execute trades on behalf of their clients, or even over the phone in the internet age.&nbsp;</p><p class="ql-align-justify"><span style="color: windowtext;">&nbsp;</span></p><p><br></p>		spot-trades	\N	\N	2023-01-02 07:03:04.533691	2023-01-02 07:03:04.533691
4	Options Trades	Risk Mitigated Options advice and Single set Option advice on weekly and biweekly timeframes for BTC & ETH contracts. 	<p><strong style="color: rgb(47, 84, 150);">What are Options?</strong><span style="color: rgb(47, 84, 150);">&nbsp;</span></p><p class="ql-align-justify">An ‘option’ is a contract that permits (but doesn’t necessitate) an investor to purchase or trade instruments like securities, ETFs or index funds at a pre-decided rate after a specified period. Selling and purchasing options are carried out in the options market. An option that permits you to acquire shares sometime in the future is referred to as a “call option.” On the other hand, an option that enables you to sell shares sometime in the future is a “put option.”&nbsp;</p><p class="ql-align-justify"><span style="color: windowtext;">&nbsp;</span></p><p class="ql-align-justify"><strong style="color: rgb(47, 84, 150);">How Does Options Trading Work?</strong><span style="color: rgb(47, 84, 150);">&nbsp;</span></p><p class="ql-align-justify">When an investor or trader buys or sells options, they have the right to apply that option at any point before the date of expiration. Simply purchasing or selling an option doesn’t require one to actually exercise it at the expiration point. Due to this structure, options are considered ‘derivative securities. In other words, the price is options is derived from other things like the value of assets, securities, and other underlying instruments). &nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(47, 84, 150);">Benefits of Options Trading</strong><span style="color: rgb(47, 84, 150);">&nbsp;</span></p><p class="ql-align-justify">- Buying options requires a lesser initial expense than acquiring stock. The price of obtaining an option (premium and trading fee) is a lot cheaper than what a trader would have to spend to purchase outright shares. - Options trading lets investors freeze the price of their stock at a specified amount for a certain period. Depending on the category of the option used, the fixed stock price (also known as the strike price) guarantees that one will be able to trade at that rate at any point before the options contract expires. - Options trading improves a trader’s investment portfolio&nbsp;through added income, leverage, and even protection. A common way of using options to limit one's downside losses is in the form of a hedge against the declining stock market. Furthermore, options can be used to produce a recurring source of income. - Options trading is inherently flexible. Before their options contract lapses, traders can employ various strategic moves. These include using options to buy shares to add to their investment portfolio. Investors can also try buying the shares and then selling some or all of them at a profit. They can also sell the contract at a higher rate to another investor before it matures and expires. &nbsp;</p><p class="ql-align-justify"><strong style="color: rgb(47, 84, 150);">How to Use&nbsp;Call Options</strong><span style="color: rgb(47, 84, 150);">&nbsp;</span></p><p class="ql-align-justify">A call option&nbsp;enables a trader to acquire a certain quantity of shares in either bonds, stocks, or other instruments like indexes and ETFs at any point before the contract expires. When purchasing a call option, to make profits, you would prefer that the asset or security price increases. This is because your&nbsp;call options&nbsp;contract enables you to purchase that underlying asset or security at the predetermined rate which is lower. Hence, in this case, you receive a discount when you use your call options contract to make a purchase. However, do keep in mind that you will have to renew your call option&nbsp;(usually on a quarterly, monthly, or weekly basis). This is why options are known to continuously experience a ‘time decay’, which essentially means that they decay in value over time. When it comes to call options, look for lower strike prices, as this suggests the call option&nbsp;has more intrinsic value. &nbsp;</p><p><br></p>		options-trades	\N	\N	2023-01-02 07:06:13.429175	2023-01-02 07:06:13.429175
5	Leverage Trades	Leverage trading amplifys your buying or selling power, allowing you to trade larger amounts.  	<p class="ql-align-justify">So even if your initial capital is small, you can use it as collateral to make leveraged trades. While leveraged trading can multiply your potential profits, it is also subject to high risk - especially in the volatile crypto market. Be careful when using leverage to trade crypto. It may lead to substantial losses if the market moves against your position.&nbsp;&nbsp;</p><p class="ql-align-justify">Leverage trading can be confusing, especially for beginners. But before experimenting with leverage, it’s crucial to understand what it is and how it works. This article will focus on leverage trading in crypto markets, but a great portion of the information is also valid for traditional markets.&nbsp;</p><p><span style="color: rgb(47, 84, 150);">What is leverage in crypto trading?&nbsp;</span></p><p class="ql-align-justify">Leverage refers to using borrowed capital to trade cryptocurrencies or other financial assets. It amplifies your buying or selling power so you can trade with more capital than what you currently have in your wallet. Depending on the crypto exchange you trade on, you could borrow up to 100 times your account balance.&nbsp;</p><p class="ql-align-justify">The amount of leverage is described as a ratio, such as 1:5 (5x), 1:10 (10x), or 1:20 (20x). It shows how many times your initial capital is multiplied. For example, imagine that you have $100 in your exchange account but want to open a position worth $1,000 in bitcoin (BTC). With a 10x leverage, your $100 will have the same buying power as $1,000.&nbsp;</p><p><span style="color: rgb(47, 84, 150);">How does leveraged trading work?&nbsp;</span></p><p class="ql-align-justify">Before you can borrow funds and start trading with leverage, you need to deposit funds into your trading account. The initial capital you provide is what we call collateral. The collateral required depends on the leverage you use and the total value of the position you want to open (known as margin).&nbsp;</p><p class="ql-align-justify">Say you want to invest $1,000 in Ethereum (ETH) with a10x leverage. The margin required would be 1/10 of $1,000, meaning that you need to have $100 in your account as collateral for the borrowed funds. If you use a 20x leverage, your required margin would be even lower (1/20 of $1,000 = $50). But keep in mind that the higher the leverage, the higher the risks of getting liquidated.&nbsp;</p><p class="ql-align-justify">Apart from the initial margin deposit, you’ll also need to maintain a margin threshold for your trades. When the market moves against your position, and the margin gets lower than the maintenance threshold, you will need to put more funds into your account to avoid being liquidated. The threshold is also known as the maintenance margin.&nbsp;</p><p><span style="color: rgb(47, 84, 150);">Why use leverage to trade crypto?&nbsp;</span></p><p class="ql-align-justify">As mentioned, traders use leverage to increase their position size and potential profits. But as illustrated by the examples above, leveraged trading could also lead to much higher losses.&nbsp;</p><p><br></p>		leverage-trades	\N	\N	2023-01-02 07:08:06.503242	2023-01-04 15:17:22.890722
\.


--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."accounts" ("id", "account_type", "wallet", "balance", "user_id", "created_at", "updated_at", "first_name", "last_name", "address", "city", "state", "country", "zip_code", "slug", "rate", "compound", "roi", "currency", "tid", "status") FROM stdin;
1		longihfiehsdohfohsijsijish	0.0	11	2024-01-17 13:44:15.974007	2024-01-17 13:44:15.974007	dave	skeen	hse 1 plot2 winners highway	abuja	Federal capital territory	Nigeria	\N	dave	\N	\N	\N	\N	\N	f
2		hAWqwiudISP[whiueo2q82380329	0.0	12	2024-01-22 13:19:09.439296	2024-01-22 13:19:09.439296	Mark	Gaffen	5733 pleasant palms St	Las Vegas	Nevada	United States	\N	mark	\N	\N	\N	\N	\N	f
3		bc1qwrqsv9tz8kyr0pgyx2lvsas2mcax8hfpd7jk59	0.0	13	2024-01-24 00:17:21.589617	2024-01-24 00:17:21.589617	Rayline 	Mann				United States	\N	rayline	\N	\N	\N	\N	\N	f
4		None	0.0	14	2024-02-01 20:28:27.425443	2024-02-01 20:28:27.425443	David	Ogendi	Nakuru	Nakuru		Kenya	\N	david	\N	\N	\N	\N	\N	f
5		bc1qrjx7r8c0mnz32xltygvhuaympky6u7nl3q7ywj	0.0	17	2024-02-22 12:09:53.57023	2024-02-22 12:09:53.57023	MARK	GAFFEN	5894 PLANSANTS PALMS STREET	NORTH LAS VEGAS	NV	United States	\N	mark-68644960-f8f3-4684-8490-32ccf02fea7a	\N	\N	\N	\N	\N	f
\.


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."active_admin_comments" ("id", "namespace", "body", "resource_type", "resource_id", "author_type", "author_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."admin_users" ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "created_at", "updated_at") FROM stdin;
1	admin@example.com	$2a$12$TJ4uTtVM6QHmXbUNudqwfeMnOYwhmf6CkY9SXG8GlqZUGlEiZsSX6	\N	\N	2024-01-25 09:46:25.037634	2022-12-23 22:21:34.090958	2024-01-25 09:46:25.038707
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."ar_internal_metadata" ("key", "value", "created_at", "updated_at") FROM stdin;
environment	production	2023-12-29 20:36:59.633885	2023-12-29 20:36:59.633885
\.


--
-- Data for Name: archives; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."archives" ("id", "title", "month", "year", "slug", "archimg", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: banners; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."banners" ("id", "bannerimg", "title", "sub_title", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."blogs" ("id", "title", "sub_title", "body", "blogimg", "videolink", "blogvideoimg", "slug", "created_at", "updated_at") FROM stdin;
1	Brazil’s Securities Regulator Allows Investment Funds to Invest in Crypto 	Brazil President Jair Bolsonaro on Thursday approved a crypto regulation bill recently passed by that country’s Chamber of Deputies and the Senate 	<p class="ql-align-justify"><span style="color: rgb(38, 38, 38);">The Brazilian Securities and Exchange Commission (CVM) on Friday approved the ability for investment funds to include crypto assets among their holdings. In a statement, the regulator explained that the decision seeks to allow funds to operate in the crypto segment while paying attention to controls related to the integrity and ownership of the assets. To be part of fund portfolios, the CVM said crypto assets will have to follow a set of criteria in line with a new regulatory framework established in a&nbsp;</span>law enacted by the outgoing president, Jair Bolsonaro, on Thursday<span style="color: rgb(38, 38, 38);">.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(38, 38, 38);">Crypto assets may be part of a fund if they are traded in entities authorized by either the Central Bank of Brazil or the CVM, or in the case of operations abroad by a local supervisor, the new rule detailed.&nbsp;</span></p><p class="ql-align-justify"><span style="color: rgb(38, 38, 38);">The new l Digital assets that are considered securities, according to the new regulations, will be supervised by the Brazilian Securities and Exchange Commission (CVM). Those that do not fall into that category (to be determined) will be overseen by another yet-to-be-created body.</span> <span style="color: rgb(38, 38, 38);">aw establishes a crime of fraud involving virtual assets, with a penalty of between four and six years in jail plus a fine. It also creates a “virtual service provider” license, which is to be requested by digital asset companies, including exchanges and trading intermediaries.&nbsp;</span></p><p><br></p>	brazil_blog_post_1.jpg			brazil-s-securities-regulator-allows-investment-funds-to-invest-in-crypto	2022-12-28 08:05:46.847208	2022-12-28 08:05:46.847208
2	BTC price lurches toward $16K as stocks, dollar wobble in final session  	The final tradfi trading day of 2022 offers little inspiration to bulls with Bitcoin price action trending down in line with both equities and the U.S. dollar.	<p class="ql-align-justify"><span style="color: windowtext;">Bitcoin BTC $16,561 teased more volatility at the Dec. 30 Wall Street open with BTC/USD heading ever closer to $16,000.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">Will the new year deliver "long-awaited volatility?"&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">Data from Cointelegraph Markets Pro and TradingView showed BTC/USD wicking down to lows of $16,337 on Bitstamp.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">The pair had been gradually upping the volatility in the days after Christmas, as analysts eyed the likelihood of a final burst of action before the yearly close.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">“Last trading day of the year for TradFi, but crypto will trade through the holiday weekend. Perhaps we may see some of that long awaited BTC volatility around the Weekly/Monthly close and the start of 2023,” on-chain analysis resource Material Indicators ventured.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">Popular trader and analyst Rekt Capital noted&nbsp;that “historically, a strong indicator of where the $BTC bottom is is when the bearish BTC Candle 2 performs its Yearly Close."&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">Rekt Capital was discussing Bitcoin’s four-year halving cycles, with the year after the halving traditionally one of overall losses.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">The worst could be in by the end of the week, he thus argued, “and whatever downside wicking occurs in the following Candle 3 is just a bonus for bargain buyers.”&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">On lower timeframes, the picture remained unclear, with BTC/USD stuck in a narrow range still $1,000 above its multi-year lows from Q4.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">Order book data from Binance uploaded by Material Indicators showed a lack of tangible support between spot price and $16,000, with resistance stacked at $17,000 and higher.&nbsp;</span></p><p><br></p>	Blog_post_image_2.jpg			btc-price-lurches-toward-16k-as-stocks-dollar-wobble-in-final-session	2022-12-31 12:54:22.388015	2022-12-31 12:54:22.388015
3	 Binance prioritizes Web3 education to further adoption and financial innovation sustainably	Binance prioritizes accessible Web3 and crypto education for all in the rapidly developing world of digital finance. As the digital finance world develops and evolves, the need for comprehensive Web3 and blockchain education is becoming crucial. 	<p>The global blockchain ecosystem behind the world’s biggest crypto exchange by trading volume, Binance, offers extensive educational resources and courses to make blockchain and Web3 education more accessible, aiming to further adoption and financial innovation sustainably.</p><p>The significance of Web3 and blockchain education is becoming increasingly apparent as more people become interested and participate in the world of digital finance. The transition from traditional financial systems to a more decentralized and digital ecosystem involves more than a simple technological shift. It requires a culture of education and responsibility from industry players to help keep the general public informed when navigating the market securely and safely.</p><p>While global awareness of Web3 technologies is rising, their day-to-day uses remain largely unknown. A recent survey showed that only 33% of internet users across the world were familiar with crypto payments, and a slightly lower percentage were aware of Web3 essentials such as nonfungible tokens (NFTs) and centralized exchanges (CEX).</p><p>A substantial portion of the global population still requires education to effectively understand and utilize Web3 and blockchain technologies. The disparity between the potential of Web3 and the current level of understanding underscores the need for educational initiatives spearheaded by key industry players.</p><p><br></p><p>Blockchain and Web3 education at a global scale</p><p>Recognizing the pivotal role of education in mass adoption and furthering sustainable innovation, Binance has prioritized education since its inception to bridge the knowledge gap in blockchain and Web3 education, making it more accessible to its users.</p><p>At the heart of Binance’s educational endeavors is the Binance Academy. Launched in 2018, the digital learning platform offers a comprehensive range of free online resources, including courses, articles, and interactive learning programs. Binance Academy’s resources are designed to cater to a diverse audience, ranging from novices to those with intermediate knowledge of blockchain and cryptocurrency.</p><p>Binance Academy’s multilingual offerings have reached over 27 million people globally, with more than 500 educational articles and glossary entries. On top of its digital library, Binance Academy has conducted blockchain technology workshops at over 200 universities in 45+ countries, educating more than 19,000 students.</p><p><strong>Raising the next wave of blockchain talent</strong></p><p>Extending its commitment to education beyond digital platforms, Binance has partnered with educational institutions worldwide, integrating blockchain education into academic curricula and conducting workshops and seminars. Its partnership with Blockchain Center, an independent nonprofit organization focused on developing blockchain talent, aims to add blockchain education to the curricula of over 200 universities across more than 50 countries.</p><p>This initiative aims to educate over one million students in blockchain engineering and compliance by 2026. The programs offered include courses on blockchain engineering, Web3, and Solidity development, as well as crypto compliance and blockchain engineering.</p><p>Aside from educating newcomers and Web3 enthusiasts, Binance also works on making high-quality research about the digital asset space available to everyone. Binance regularly publishes data and insights on blockchain, Web3, and crypto fields through its research arm, Binance Research, which provides institutional-grade analysis and insights for cryptocurrency investors. In 2023, Binance Research published 56 insights and analysis reports and 39 project reports.</p><p>Binance Co-Founder Yi He shared:</p><p><strong>“The Web3 sector is maturing rapidly. That’s why we think it’s so important to equip people with the necessary knowledge—it's a mission we take to heart at Binance. As the industry leader, we are committed to driving innovation not just through our technology but also by making education accessible to all.”</strong></p><p>Binance also sees education as a fundamental part of the overall user experience, working hard to integrate education at every stage of users’ journeys. That includes making sure that people thoroughly understand the risks of investing with dedicated and specific risk warnings or helping users understand new features through product explainer videos.</p><p>The Binance team also regularly reviews and updates information on trading to help their users stay educated on the latest risks and developments in the industry, as well as for new products or features on their platform. They aim to provide as much helpful information to their users as possible so that they have everything they need to make informed decisions and navigate the platform and the world of digital assets safely and securely.</p><p>The role of educational initiatives in the growth and adoption of Web3 innovation is undeniable, and global education platforms like Binance Academy are instrumental in equipping a wider audience with the free knowledge needed to navigate the complexities of the digital asset space.</p><p>Educational endeavors by industry leaders are more than just corporate responsibility; they are a strategic move toward a future where blockchain and Web3 are integral to current financial systems. As these technologies continue to mature, the need for widespread education will only grow, making the efforts of companies like Binance vital in shaping the future of digital finance.</p><p><br></p>	bcoins_blog_post_image_1.jpeg			binance-prioritizes-web3-education-to-further-adoption-and-financial-innovation-sustainably	2024-01-23 06:48:54.081481	2024-01-23 06:48:54.081481
4	Unraveling the Wonders of Cryptocurrency Trading with Bcoins Profit Brokers	Navigating the World of Cryptocurrency with Ease and Confidence.	<p>In the fast-paced world of cryptocurrencies, finding a reliable and user-friendly platform is crucial for both beginners and seasoned traders.</p><p>In this blog post, we will explore the remarkable features that make Bcoins Profit a standout choice for anyone looking to dive into the exciting realm of crypto trading.</p><p>1. User-Friendly Interface:</p><p>Bcoins Profits boasts an intuitive and user-friendly interface, designed to cater to the needs of both beginners and experienced traders. With easy navigation and a clean layout, users can quickly access many features without feeling overwhelmed.</p><p>2. Extensive Range of Cryptocurrencies:</p><p>One of the key strengths of the Bcoins Profit Platform is its extensive selection of cryptocurrencies available for trading. From the well-established Bitcoin and Ethereum to promising altcoins, users can explore a diverse range of digital assets, providing ample investment opportunities.</p><p>3. Advanced Security Measures:</p><p>Security is a top priority at Bcoins Profits. We explore the advanced security measures in place, including two-factor authentication and cold storage for digital assets. Discover how the platform ensures the safety and protection of users' funds in an ever-evolving digital landscape.</p><p>4. Transparent Fee Structure:</p><p>Understanding the cost of trading is essential for any investor. Bcoins Profits distinguishes itself with a transparent fee structure, eliminating hidden charges and providing users with clarity on transaction costs. Learn how this commitment to transparency builds trust among the user community.</p><p>5. Real-Time Market Data:</p><p>Keeping up with market trends is crucial in the crypto world. Bcoins provides real-time market data, enabling users to make informed decisions. Discover how this feature empowers traders to stay ahead of the curve and capitalize on emerging opportunities.</p><p>As we conclude our exploration, it's evident that Bcoins Profit offers a comprehensive and reliable platform for cryptocurrency trading. Whether you're a seasoned investor or a newcomer to the crypto space, the user-friendly interface, extensive cryptocurrency selection, advanced security measures, transparent fee structure, and real-time market data makes our platform a standout choice in the competitive world of crypto trading.</p><p><br></p>	bcoins_blog_post_image_02.jpg			unraveling-the-wonders-of-cryptocurrency-trading-with-bcoins-profit-brokers	2024-01-23 06:55:42.87496	2024-01-23 06:55:42.87496
5	 Spotlight on Bcoins Profits: A Customer-Centric Approach to Crypto Trading	Building Trust and Satisfaction Through Exceptional Customer Service	<p>In the dynamic world of cryptocurrency trading, customer service is a cornerstone of success. This blog post shines a spotlight on Bcoins and explores how its customer-centric approach is setting new standards in the crypto industry.</p><p>1. Responsive Customer Support: Bcoins Profits prides itself&nbsp;on offering responsive customer support. Delve into real user experiences, highlighting instances where the support team went above and beyond to address queries and concerns promptly. Learn how this commitment to responsiveness contributes to a positive user experience.</p><p>2. Educational Resources: Education is empowerment, especially in the complex world of cryptocurrencies. Discover how Bcoins Profit goes beyond being a trading platform by providing educational resources. From informative articles to video tutorials, users can enhance their understanding of the crypto market and make informed decisions.</p><p>3. Community Engagement: Building a strong community is a priority for Bcoins Profits. Explore how its platform fosters community engagement through forums, webinars, and social media. Learn about the benefits of being part of a thriving community and how it adds value to the overall user experience.</p><p>4. User Feedback and Iterative Improvements: Bcoins Profit values user feedback and actively incorporates it into the platform's development. Explore instances where user suggestions led to meaningful improvements, showcasing how the platform evolves based on the needs and preferences of its user base.</p><p>5. Seamless Onboarding Process: For newcomers to the crypto space, getting started can be a daunting task. Bcoins Profits simplifies the onboarding process, making it easy for users to create an account, deposit funds, and start trading. Learn how the platform prioritizes a seamless user experience from the first interaction.</p><p>Bcoins Profits stands out not only for its robust trading features but also for its unwavering commitment to customer satisfaction. From responsive customer support and educational resources to community engagement and a user-friendly onboarding process, Bcoins Profits is redefining the crypto trading experience by placing the user at the center of its priorities.</p>	bcoins_blog_post_image_3.jpg			spotlight-on-bcoins-profits-a-customer-centric-approach-to-crypto-trading	2024-01-23 07:04:04.78849	2024-01-23 07:04:04.78849
6	Riding the Waves of Innovation –Bcoins Profit's Cutting-Edge Features	 A Glimpse Into the Future of Crypto Trading	<p>In the ever-evolving landscape of cryptocurrency, staying ahead of the curve is paramount. Join us as we delve into the innovative features that make us a pioneer in the world of crypto trading. From advanced trading tools to futuristic technologies, discover how Bcoins Profits is shaping the future of digital asset trading.</p><p>1. Smart Trading Algorithms: Bcoins Profits harnesses the power of smart trading algorithms to provide users with enhanced trading experiences. Explore how these algorithms analyze market trends, execute trades, and optimize strategies, empowering users to make data-driven decisions and maximize their trading potential.</p><p>2. AI-Powered Insights: Artificial intelligence is at the forefront of Bcoins Profit's commitment to providing users with valuable insights. Learn how AI algorithms analyze vast amounts of data to offer personalized trading recommendations, helping users navigate the volatile cryptocurrency markets with confidence.</p><p>3. Social Trading Platforms: Bcoins Profit is redefining collaboration in the crypto space with its social trading features. Uncover how users can follow and replicate the trades of successful investors, creating a collaborative ecosystem where knowledge is shared and users can benefit from the expertise of seasoned traders.</p><p>4. Seamless Cross-Platform Integration: Today's traders are on the move, and Bcoins Profits recognizes the importance of accessibility. Explore how the platform seamlessly integrates across multiple devices, allowing users to trade from desktops, tablets, and mobile devices without compromising on functionality or security.</p><p>5. Tokenized Assets and DeFi Integration: The future of finance is decentralized, and Bcoins Profit is at the forefront of this revolution. Discover how the platform embraces tokenized assets and integrates with decentralized finance (DeFi) protocols, opening new avenues for users to engage in innovative financial instruments and investment opportunities.</p><p>As we conclude our exploration of Bcoins Profit's cutting-edge features, it's evident that the platform is not just keeping pace with the rapidly evolving crypto landscape but is actively shaping its future. From smart trading algorithms and AI-powered insights to social trading platforms, seamless cross-platform integration, and embracing decentralized finance, Bcoins Profits is leading the charge toward a new era of innovation in crypto trading. Stay tuned for more groundbreaking features as Bcoins Profits continues to ride the waves of technological advancement in the cryptocurrency space.</p>	bcoins_blog_post_image_4.jpg			riding-the-waves-of-innovation-bcoins-profit-s-cutting-edge-features	2024-01-23 07:10:36.094131	2024-01-23 07:10:36.094131
7	Maximizing Profits with Bcoins Profits' AI Trading Signals: Your Guide to Success	In the fast-paced world of cryptocurrency trading, having access to reliable trading signals can make all the difference between success and failure. Bcoins Profits' AI-powered trading signals offer valuable insights and recommendations to help traders navigate the complex and volatile market with confidence and precision. 	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">In this post, we'll explore how traders can maximize their profits with Bcoins Profits' AI trading signals.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Understanding Trading Signals</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Trading signals are indicators or patterns that suggest potential buy-or-sell opportunities in the market. Bcoins Profits' AI-powered trading signals analyze vast amounts of market data in real-time, identifying patterns, trends, and opportunities that human traders may overlook. These signals provide traders with actionable recommendations to help them make informed decisions with confidence.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Leveraging AI-Powered Algorithms</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' AI-powered algorithms utilize machine learning and predictive analytics to analyze market data and identify profitable trading opportunities. These algorithms continuously optimize trading strategies to maximize returns and minimize risks, providing traders with a competitive edge in the market.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Customizing Trading Strategies</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' platform allows traders to customize their trading strategies based on their individual preferences, risk tolerance, and investment goals. Whether you prefer short-term scalping, medium-term swing trading, or long-term investing, Bcoins Profits' AI trading signals can be tailored to suit your trading style.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Implementing Trading Signals for Success</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">To maximize profits with Bcoins Profits' AI trading signals, it's essential to understand how to implement them effectively. Traders should thoroughly backtest and validate trading signals before incorporating them into their strategies. Additionally, traders should monitor market conditions closely and adjust their strategies as needed to adapt to changing market dynamics.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Real-Life Success Stories</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' platform has helped countless traders achieve success in the cryptocurrency market. In this section, we'll share real-life success stories of traders who have achieved significant profits using Bcoins Profits' AI trading signals. These stories serve as inspiration and motivation for traders looking to unlock their full potential in the market.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In conclusion, Bcoins Profits' AI trading signals offer unparalleled accuracy, efficiency, and reliability, providing traders with the tools they need to achieve their trading goals and unlock their full potential in the cryptocurrency market.</span></p><p><br></p><p><br></p>	pexels-tara-winstead-8386440.jpg			maximizing-profits-with-bcoins-profits-ai-trading-signals-your-guide-to-success	2024-02-14 10:06:07.119593	2024-02-14 10:06:07.119593
8	Navigating the Digital Trading Landscape: Strategies for Success with Bcoins Profits	Digital trading has become increasingly popular in recent years, offering individuals the opportunity to capitalize on the volatility of the cryptocurrency market. Bcoins Profits' digital trading platform provides traders with the tools and resources they need to succeed in this dynamic landscape. 	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">We'll look at successful digital trading tactics with Bcoins Profits in this post.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Introduction to Digital Trading</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">It's important to start with the fundamentals if you're new to digital trading. To assist traders in getting started, Bcoins Profits' platform provides an intuitive user interface along with a wealth of educational resources. To build a strong basis for your trading career, educate yourself on risk management concepts, technical indicators, and market analysis.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Developing a Trading Strategy</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Successful digital trading requires a well-defined trading strategy tailored to your goals, risk tolerance, and market conditions. Bcoins Profits' platform provides access to a wide range of trading tools and indicators to help traders develop and implement their strategies effectively.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Leveraging Technical Analysis</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Technical analysis plays a crucial role in digital trading, helping traders identify patterns, trends, and potential price movements in the market. Bcoins Profits' platform offers advanced charting tools and technical indicators to assist traders in conducting thorough market analysis and making informed decisions.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Managing Risk Effectively</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Effective risk management is essential for long-term success in digital trading. Bcoins Profits' platform includes risk management features such as stop-loss orders, position sizing tools, and portfolio diversification options to help traders protect their capital and minimize losses.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Continuously Learning and Adapting</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The cryptocurrency market is constantly evolving, so it's essential to learn and adapt to new developments and trends continuously. Bcoins Profits' platform provides access to real-time market data, news, and analysis to help traders stay informed and make informed decisions in a rapidly changing environment.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In conclusion, Bcoins Profits' digital trading platform offers traders the tools, resources, and support they need to succeed in the cryptocurrency market. By understanding the basics of trading, developing a solid strategy, leveraging technical analysis, managing risk effectively, and continuously learning and adapting, traders can achieve their financial goals with confidence.</span></p><p><br></p><p><br></p>	pexels-tima-miroshnichenko-7567443.jpg			navigating-the-digital-trading-landscape-strategies-for-success-with-bcoins-profits	2024-02-14 10:17:27.671882	2024-02-14 10:17:27.671882
9	 Maximizing Your Trading Potential: Harnessing Trading Signals on Bcoins Profit.	 Having access to dependable trading signals can be the difference between success and failure in the hectic world of bitcoin trading. That is when the trading signals function of Bcoins Profit becomes useful. You can advance your trading with actionable tips and real-time insights.	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profit's trading signals provide you with real-time insights into market trends, price movements, and potential trading opportunities. Whether you're a seasoned trader or just starting out, our signals give you the edge you need to stay ahead of the curve and capitalize on market volatility.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Tired of second-guessing your trading decisions? With Bcoins Profit's trading signals, you'll receive actionable recommendations directly to your dashboard, allowing you to make informed decisions with confidence. From buy and sell signals to trend analysis and market sentiment indicators, our signals cover all the bases to help you succeed in the cryptocurrency market.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Stay Ahead of the Curve</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In the fast-paced world of cryptocurrency trading, timing is everything. With Bcoins Profit's trading signals, you can stay ahead of the curve and capitalize on market opportunities before they pass you by. Whether it's identifying trend reversals, detecting oversold or overbought conditions, or spotting bullish or bearish patterns, our signals give you the edge you need to succeed.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Take Your Trading to the Next Level</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Are you ready to take your trading to the next level? Visit Bcoins Profit today and unlock the power of trading signals. With real-time insights, actionable recommendations, and unparalleled accuracy, Bcoins Profit is your ultimate trading companion in the cryptocurrency market.</span></p>	pexels-alphatradezone-5833272.jpg			maximizing-your-trading-potential-harnessing-trading-signals-on-bcoins-profit	2024-02-15 09:29:23.192253	2024-02-15 09:29:23.192253
10	Solana stablecoin transfer volume hits a record monthly high of $300B	There has already been more than $300 billion in stablecoin transfer volume in January, eclipsing December’s volume. The transfer volume of stablecoins on the layer-1 Solana blockchain has steadily increased, hitting a new record in January.	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">According to blockchain analytics platform Artemis, stablecoin transfer volume on Solana already exceeded $300 billion in January.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The figure has already eclipsed the $297 billion in </span><a href="https://cointelegraph.com/news/what-is-solana-and-how-does-it-work" rel="noopener noreferrer" target="_blank" style="background-color: transparent; color: rgb(13, 13, 13);">Solana</a><span style="background-color: transparent; color: rgb(13, 13, 13);"> stablecoin transfer volume for December 2023.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Moreover, January’s $303 billion to date is 2,520% more than the $11.56 billion stablecoin transfer volume in January 2023.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Solana’s stablecoin market share is currently almost 32%, which is a massive increase from the 1.2% share it had a year ago.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Stablecoin activity on Solana started picking up in October 2023 and has steadily increased by 650% since then.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Ethereum is the industry leader for stablecoin transfer volume, with $317 billion so far this month, giving it a market share of more than 33%. However, Solana is rapidly catching up. The third-largest blockchain for stablecoin transfers is Tron, with $240 billion so far this month.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">On Jan. 16, Artemis noted that weekly stablecoin volumes across all networks had reached a yearly high. It attributed the growth to USD Coin&nbsp;</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">On Jan.18, Paxos announced that its regulated stablecoin, USDP, had launched on the Solana blockchain.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Over the past year, more than $1.18 trillion in stablecoins was transferred across all blockchains.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In addition to stablecoin volumes, there has been an uptick in decentralized finance activity on Solana, pushing total value locked to its highest level since September 2022 at $1.36 billion, according to DefiLlama.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Solana’s price has been in retreat this week, falling 2% over the weekend to trade at $93 at the time of writing. The asset has now retreated 25% from its December 2023 high of $123 and remains down 64% from its all-time high of $260 in November 2021.</span></p><p><br></p><p><br></p>	pexels-karolina-grabowska-5980871.jpg			solana-stablecoin-transfer-volume-hits-a-record-monthly-high-of-300b	2024-02-16 08:24:42.390635	2024-02-16 08:24:42.390635
11	The Best of Both Worlds: Combining Crypto Loans and Trading Signals on Bcoins Profits.	Trying to get the most out of your cryptocurrency assets and increase your trading potential? If you're looking for cryptocurrency loans and trading signals, look nowhere else than Bcoins Profit.  You may have the best of both worlds and achieve unprecedented success in your cryptocurrency trading with our integrated platform.	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">With Bcoins Profit's crypto loan feature, you can unlock liquidity from your cryptocurrency holdings without selling them. Whether you need funds for trading, investment opportunities, or personal expenses, our crypto loans offer a flexible and convenient solution. Simply deposit your crypto as collateral, and within minutes, you can access fiat currency or stablecoins directly in your account.</span></p><h4><br></h4><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Enhance Your Trading Strategy with Trading Signals</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Take your trading strategy to the next level with Bcoins Profit's trading signals. Our real-time insights and actionable recommendations give you the edge you need to succeed in the cryptocurrency market. Whether you're a seasoned trader or just starting, our signals cover all the bases, from trend analysis and market sentiment indicators to buy and sell signals.</span></p><h4><br></h4><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">The Ultimate Crypto Trading Companion</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">With Bcoins Profit, you don't have to choose between unlocking liquidity and maximizing your trading potential. Our integrated platform offers the best of both worlds, allowing you to leverage your crypto holdings to access funds while benefiting from real-time trading insights and recommendations. Whether you're a borrower, a trader, or both, Bcoins Profit has everything you need to succeed in the cryptocurrency market.</span></p><p><br></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Get Started Today</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Ready to unlock the full potential of your cryptocurrency holdings? Visit Bcoins Profit today and experience the ultimate crypto trading companion. With crypto loans, trading signals, and so much more, Bcoins Profit is your gateway to financial freedom in the world of cryptocurrency.</span></p><p><br></p><p><br></p>	pexels-rdne-stock-project-8370752.jpg			the-best-of-both-worlds-combining-crypto-loans-and-trading-signals-on-bcoins-profits	2024-02-17 08:53:07.082611	2024-02-17 08:53:07.082611
12	Unlocking the Potential of Digital Trading on Bitcoin Profits	 In recent years, Bitcoin has emerged as a lucrative asset class, attracting traders worldwide eager to capitalize on its price volatility. Digital trading on Bitcoin profits has become increasingly popular, offering opportunities for both seasoned investors and newcomers to the cryptocurrency market. Understanding Bitcoin Trading Strategies	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">Successful Bitcoin trading requires a solid understanding of various trading strategies. Whether you're a day trader aiming to profit from short-term price movements or a long-term investor hodling for the future, having a clear strategy is crucial. Consider diversifying your approach, combining technical analysis with fundamental factors to make informed decisions.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">While the potential for profits in Bitcoin trading is enticing, it's essential to prioritize risk management. Set clear risk-reward ratios, implement stop-loss orders to limit potential losses, and avoid investing more than you can afford to lose. Remember, preserving capital is key to long-term success in trading.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Keeping an eye on market trends is essential for identifying profitable trading opportunities. Utilize technical analysis tools such as moving averages, MACD, and RSI to analyze price charts and identify potential entry and exit points. Stay informed about macroeconomic factors and news events that could impact Bitcoin's price.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">If you're new to Bitcoin trading, start small and focus on learning the basics. Choose a reputable cryptocurrency exchange, practice trading with demo accounts, and seek knowledge from experienced traders. Embrace a mindset of continuous learning and improvement, and don't let emotions dictate your trading decisions.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In conclusion, digital trading on Bcoins Profits offers immense potential for those willing to learn and adapt to the dynamic cryptocurrency market. By employing sound trading strategies, prioritizing risk management, and staying informed about market trends, you can unlock the doors to financial success in the world of Bitcoin trading.</span></p><p><br></p><p><br></p>	pexels-alphatradezone-5833772.jpg			unlocking-the-potential-of-digital-trading-on-bitcoin-profits	2024-02-18 14:43:30.123977	2024-02-18 14:43:30.123977
13	Enhancing Your Trading Strategy with Cryptocurrency Trading Signals	Having access to dependable trading signals can be the difference between success and failure in the hectic world of bitcoin trading. Including trading signals in your approach can improve your ability to navigate the market and raise your chances of success, regardless of experience level. 	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">Let's delve into how you can enhance your trading strategy with cryptocurrency trading signals.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">The Power of Data-Driven Insights</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Cryptocurrency trading signals are essentially data-driven insights derived from various technical and fundamental analysis techniques. These signals provide traders with valuable information about market trends, price movements, and potential trading opportunities. By leveraging these insights, traders can make more informed decisions and execute trades with greater confidence.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Identifying Profitable Opportunities</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">One of the primary benefits of trading signals is their ability to identify profitable trading opportunities in the cryptocurrency market. Whether it's spotting trend reversals, detecting oversold or overbought conditions, or identifying bullish or bearish patterns, trading signals can help traders pinpoint entry and exit points with precision. This allows traders to capitalize on price movements and maximize their profits.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Streamlining Decision-Making Process</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In the fast-paced world of cryptocurrency trading, timing is everything. Trading signals can help streamline the decision-making process by providing traders with timely and actionable insights. Instead of spending hours analyzing charts and monitoring market conditions, traders can rely on trading signals to alert them to potential opportunities, allowing them to act swiftly and decisively.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Managing Risk Effectively</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Effective risk management is crucial for long-term success in cryptocurrency trading. Trading signals can help traders manage risk more effectively by providing them with valuable information about potential downside risks and opportunities to mitigate them. Whether it's setting stop-loss orders, adjusting position sizes, or diversifying portfolios, trading signals can help traders protect their capital and minimize losses.</span></p><p>To sum up, trading signals for cryptocurrencies are an effective instrument for refining your approach to trading and raising your chances of success in the market. Through the utilization of data-driven insights, traders can attain a competitive advantage and accomplish their trading objectives by recognizing lucrative possibilities, optimizing decision-making procedures, and competently managing risk.&nbsp;</p><p><br></p><p><br></p>	pexels-anna-nekrashevich-6801647.jpg			enhancing-your-trading-strategy-with-cryptocurrency-trading-signals	2024-02-19 18:09:56.4118	2024-02-19 18:09:56.4118
14	Crypto exchange-traded products hit bull run levels with $67B AUM	Positive price movement, decreasing withdrawals, and record-breaking inflows into cryptocurrency products so far this year have created the ideal environment for the rising AUM.	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">According to Butterfill, "At the same time, outflows from incumbent players have drastically decreased." Weekly withdrawals from Grayscale's products totaled $623 million; since the fund's conversion to an ETF on January 1, the issuer's Bitcoin fund has experienced withdrawals totaling over $7 billion.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">According to Cointelegraph Markets Pro, Bitcoin increased by more than 4% between Monday, February 12, and Friday, February 16. It hit a high of about $52,000 at the end of the week, the highest since December 2021.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Nevertheless, a few investors are placing bets on a price decline, adding $5.8 million to short-Bitcoin instruments.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Comparatively small inflows of $21 million were also seen in ether products, which concluded last week at a high of about $2,800, last reached in May 2022.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Altcoin ETPs based on Avalanche at $39.13, Chainlink at $19.61, and Polygon at $0.9826 stood out for “having consistently seen weekly inflows this year,” Butterfill noted, each seeing around $1 million inflows apiece.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Solana products saw $1.6 million in outflows, which Butterfull pinned on “impacted sentiment” from the network’s recent downtime in early February.</span></p><p><br></p>	pexels-ivan-babydov-7788009.jpg			crypto-exchange-traded-products-hit-bull-run-levels-with-67b-aum	2024-02-20 13:33:27.258133	2024-02-20 13:33:27.258133
15	Leveraging Crypto Loans and Mortgages for Financial Flexibility	As the cryptocurrency market continues to evolve, innovative financial products such as crypto loans and mortgages have emerged, offering users new ways to leverage their digital assets. 	<p><span style="color: rgb(13, 13, 13);">Let's explore how these services can provide financial flexibility and unlock opportunities for crypto enthusiasts.</span></p><p><span style="color: rgb(13, 13, 13);">Crypto-backed loans allow individuals to unlock liquidity from their cryptocurrency holdings without selling their assets. By using Bitcoin or other cryptocurrencies as collateral, borrowers can access fiat currency or stablecoins to meet their financial needs while retaining ownership of their digital assets. This enables them to benefit from potential future price appreciation while accessing immediate funds.</span></p><h4><span style="color: rgb(13, 13, 13);">Utilizing Crypto Mortgages for Real Estate Investments</span></h4><p><span style="color: rgb(13, 13, 13);">Cryptocurrency mortgages offer a unique opportunity for individuals to enter the real estate market using their digital assets as collateral. Whether purchasing a new home or investing in rental properties, crypto mortgages provide a convenient alternative to traditional bank financing. By leveraging their cryptocurrency holdings, borrowers can access favorable loan terms and expedite the homebuying process.</span></p><p><br></p><p><span style="color: rgb(13, 13, 13);">When evaluating financing options, it's essential to compare traditional loans with crypto-backed loans to determine the best fit for your needs. While traditional loans may offer lower interest rates and broader acceptance, crypto loans provide greater privacy, faster approval times, and the ability to access funds without selling your crypto holdings. Consider your priorities and risk tolerance when choosing between these options.</span></p><p><span style="color: rgb(13, 13, 13);">It's important to consider the tax implications of crypto loans and mortgages before proceeding. Depending on your jurisdiction, borrowing against your cryptocurrency holdings may have tax consequences, such as triggering capital gains or losses. Consult with a tax professional to understand the implications and develop a strategy for managing your tax liabilities effectively.</span></p><p><br></p><p><span style="color: rgb(13, 13, 13);">In conclusion, crypto loans and mortgages offer exciting possibilities for individuals seeking financial flexibility and access to liquidity while maintaining ownership of their digital assets. By understanding how these services work and carefully evaluating their benefits and risks, you can leverage your cryptocurrency holdings to unlock new opportunities and achieve your financial goals.</span></p>	409D8278-29D2-4C36-AB2E-17AEB617467D.jpeg			leveraging-crypto-loans-and-mortgages-for-financial-flexibility	2024-02-21 19:16:28.121561	2024-02-21 19:16:28.121561
16	The Future of Finance: How Bcoins Profits' AI Services, Digital Trading, and Crypto Loans & Mortgages Are Shaping the Landscape.	The future of finance is here, and Bcoins Profits is leading the way with its innovative AI services, digital trading platform, and crypto loans & mortgages. 	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">In this post, we'll explore how Bcoins Profits is reshaping the landscape of finance and empowering investors to achieve their financial goals in the digital age.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Integration of AI Technology</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' AI services leverage advanced machine learning algorithms and predictive analytics to analyze market data, identify profitable trading opportunities, and optimize trading strategies. By harnessing the power of AI technology, Bcoins Profits is revolutionizing how investors approach the cryptocurrency market.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Seamless Digital Trading Experience</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' digital trading platform offers a seamless and user-friendly trading experience, providing traders access to a wide range of cryptocurrency assets, advanced trading tools, and real-time market data. Whether you're a seasoned trader or just starting out, Bcoins Profits' platform has everything you need to succeed in the cryptocurrency market.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Flexible Financing Solutions</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profits' crypto loans and mortgages offer flexible financing solutions for investors looking to unlock liquidity while retaining ownership of their digital assets. Whether you need funds for personal expenses, investment opportunities, or real estate ventures, Bcoins Profits' platform provides a convenient and efficient way to access liquidity in the digital age.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Empowering Financial Freedom</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">At Bcoins Profits, we're committed to empowering investors to achieve their financial goals in the digital age. Whether you're looking to maximize profits with AI-powered trading signals, explore new investment opportunities with digital trading, or unlock liquidity with crypto loans and mortgages, Bcoins Profits has the tools, resources, and support you need to succeed in the cryptocurrency market.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">In conclusion, Bcoins Profits is shaping the future of finance with its innovative AI services, digital trading platform, and crypto loans &amp; mortgages. By leveraging advanced technology and providing flexible financing solutions, Bcoins Profits empowers investors to achieve financial freedom and unlock new opportunities in the digital age.</span></p>	pexels-rdne-stock-project-8293778.jpg			the-future-of-finance-how-bcoins-profits-ai-services-digital-trading-and-crypto-loans-mortgages-are-shaping-the-landscape	2024-02-23 19:15:52.075022	2024-02-23 19:15:52.075022
17	Unlocking Financial Opportunities: The Power of Crypto Loans on Bcoins Profit.	Are you looking to unlock the potential of your cryptocurrency holdings without selling them? Look no further than Bcoins Profit's innovative crypto loan feature. 	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">With crypto loans, you can access liquidity while retaining ownership of your digital assets, opening up a world of financial opportunities.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bcoins Profit's crypto loan service allows you to use your cryptocurrency holdings as collateral to secure a loan. Whether you need funds for personal expenses, investment opportunities, or business ventures, crypto loans offer a flexible and convenient solution. Say goodbye to the hassle of selling your crypto assets and missing out on potential gains.</span></p><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Accessing Immediate Funds</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Need cash quickly? Bcoins Profit's crypto loans provide fast and easy access to funds without the lengthy approval process associated with traditional loans. Simply deposit your cryptocurrency as collateral, and within minutes, you can access fiat currency or stablecoins directly into your account. It's that simple.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">One of the key advantages of Bcoins Profit's crypto loan service is its built-in risk management features. With transparent terms and customizable loan-to-value ratios, you can tailor your loan to suit your risk tolerance and financial goals. Plus, with competitive interest rates and flexible repayment options, you can borrow with confidence knowing that your assets are in safe hands.</span></p><h4><br></h4><h4><span style="background-color: transparent; color: rgb(13, 13, 13);">Unlock Your Financial Potential Today</span></h4><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Ready to unlock the full potential of your cryptocurrency holdings? Visit Bcoins Profit today and explore the benefits of crypto loans. With fast approval, competitive rates, and unparalleled convenience, Bcoins Profit is your gateway to financial freedom.</span></p><p><br></p>	pexels-rdne-stock-project-8293743.jpg			unlocking-financial-opportunities-the-power-of-crypto-loans-on-bcoins-profit	2024-02-24 11:34:33.177829	2024-02-24 11:34:33.177829
18	Leveraging Crypto Loans and Mortgages for Financial Flexibility	As the cryptocurrency market continues to evolve, innovative financial products such as crypto loans and mortgages have emerged, offering users new ways to leverage their digital assets. 	<p><span style="color: rgb(13, 13, 13);">Let's explore how these services can provide financial flexibility and unlock opportunities for crypto enthusiasts.</span></p><p><span style="color: rgb(13, 13, 13);">Crypto-backed loans allow individuals to unlock liquidity from their cryptocurrency holdings without selling their assets. By using Bitcoin or other cryptocurrencies as collateral, borrowers can access fiat currency or stablecoins to meet their financial needs while retaining ownership of their digital assets. This enables them to benefit from potential future price appreciation while accessing immediate funds.</span></p><h4><span style="color: rgb(13, 13, 13);">Utilizing Crypto Mortgages for Real Estate Investments</span></h4><p><span style="color: rgb(13, 13, 13);">Cryptocurrency mortgages offer a unique opportunity for individuals to enter the real estate market using their digital assets as collateral. Whether purchasing a new home or investing in rental properties, crypto mortgages provide a convenient alternative to traditional bank financing. By leveraging their cryptocurrency holdings, borrowers can access favorable loan terms and expedite the homebuying process.</span></p><p><br></p><p><span style="color: rgb(13, 13, 13);">When evaluating financing options, it's essential to compare traditional loans with crypto-backed loans to determine the best fit for your needs. While traditional loans may offer lower interest rates and broader acceptance, crypto loans provide greater privacy, faster approval times, and the ability to access funds without selling your crypto holdings. Consider your priorities and risk tolerance when choosing between these options.</span></p><p><span style="color: rgb(13, 13, 13);">It's important to consider the tax implications of crypto loans and mortgages before proceeding. Depending on your jurisdiction, borrowing against your cryptocurrency holdings may have tax consequences, such as triggering capital gains or losses. Consult with a tax professional to understand the implications and develop a strategy for managing your tax liabilities effectively.</span></p><p><br></p><p><span style="color: rgb(13, 13, 13);">In conclusion, crypto loans and mortgages offer exciting possibilities for individuals seeking financial flexibility and access to liquidity while maintaining ownership of their digital assets. By understanding how these services work and carefully evaluating their benefits and risks, you can leverage your cryptocurrency holdings to unlock new opportunities and achieve your financial goals.</span></p>	C20B00E1-C0EE-4469-9B69-9C0CA662BCF2.jpeg			leveraging-crypto-loans-and-mortgages-for-financial-flexibility-84f7c570-3372-47a8-9c7c-038f1c6134cc	2024-02-26 18:12:21.490521	2024-02-26 18:12:21.490521
19	GBTC hits lowest-ever $22M outflow, raising hopes for an end to Bitcoin bleedGrayscale’s ETF bleeding has slowed again, while other funds have seen another strong day of inflows, lifting them to a fortnightly high.	Grayscale’s ETF bleeding has slowed again, while other funds have seen another strong day of inflows, lifting them to a fortnightly high.	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">Grayscale’s spot Bitcoin exchange-traded fund (ETF) has seen its third consecutive trading day of slowing net outflows, hitting a record low of $22.4 million as ETFs combined hit a two-week net inflow high. Farside Investor data for Feb. 26 shows the Grayscale Bitcoin Trust (GBTC) had three back-to-back days of slowing net outflows on Feb. 22, 23, and 26. It ended the trading week on Friday with a daily net outflow of $44.2 million, and outflows further halved on Feb. 26.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">However, Grayscale has also marked 31 straight trading days of outflows since it converted to an ETF on Jan. 11, with $7.47 billion in total drained from the ETF.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bitcoin technology firm Blockstream CEO Adam Back posted to X on Feb. 26 that he’s “waiting for the day GBTC flashes an inflow.” Back added it “could happen” but would need “just enough premium” to incentivize traders to arbitrage the ETF.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Henrik Andersson, chief investment officer at asset manager Apollo Crypto, concurred in a separate X post, writing that the first time Grayscale’s fund posts a net inflow, it “will be a mega signal to the market.”</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Meanwhile, Farside’s data for Feb. 26 shows the combined net inflows of all Bitcoin ETFs besides Invesco and Galaxy’s hit $515.5 million — the highest in two weeks.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The ETFs hit a combined net inflow of $631.3 million on Feb. 13 but have struggled to maintain the momentum since, even seeing a net outflow of $35.6 million on Feb. 21 due to a comparatively larger outflow day from GBTC and smaller inflows to other funds.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Fidelity’s ETF saw the bulk of the inflows on Feb. 26 at over $243 million, accounting for nearly half of the day’s net total. It is also FBTC’s second-highest inflow day ever behind Jan. 17.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The other half of the net inflow came from BlackRock’s ETF along with ARK Invest and 21Shares fund, which had respective inflows of nearly $112 million and over $130.5 million.</span></p><p><br></p><p><br></p>	pexels-karolina-grabowska-5980888.jpg			gbtc-hits-lowest-ever-22m-outflow-raising-hopes-for-an-end-to-bitcoin-bleedgrayscale-s-etf-bleeding-has-slowed-again-while-other-funds-have-seen-another-strong-day-of-inflows-lifting-them-to-a-fortnightly-high	2024-02-27 10:52:08.974841	2024-02-27 10:52:08.974841
20	Bitcoin breaches $60K for the first time in over 2 years	The last time Bitcoin traded above $60,000 was in November 2021, shortly after it reached its all-time high. Is a “pre-halving retracement” imminent?	<p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bitcoin breached $60,000 for the first time in over two years after rising over 6% in the 24 hours leading up to 1:00 pm UTC, touching $60,001 on Binance at 1:11 pm.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The world’s first cryptocurrency is up over 13% on the weekly chart and 37% during the past month, according to CoinMarketCap data. The last time Bitcoin traded above $60,000 was on Nov. 12, 2021, when Bitcoin started its reversal, falling over 67% to the macro low of $19,297 at the beginning of April 2022.</span></p><p><br></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bitcoin’s price performance can largely be attributed to the market anticipation surrounding the upcoming halving event, which historically leads to increased buying activity, according to Bryan Legend, investor and CEO of Hectic Labs. He said, “Investors expect a reduction in supply to drive up prices. This is better known as the ‘Pre-Halvingrally',’ which contributes to a new bull market with a refreshed bullish sentiment. This is exactly what we are seeing today.”</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Yet, according to pseudonymous crypto analyst Rekt Capital, a “pre-halving retracement” could still be on the table. The pseudonymous analyst added that the upcoming Bitcoin halving isn’t priced in by the market, based on historical market data that saw Bitcoin’s major movements occur after previous halvings, not before, as Rekt Capital shared in a Feb. 28 X post.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Bitcoin’s bullish momentum comes two days after the spot Bitcoin exchange-traded funds (ETFs) in the United States broke an all-time high of $2.4 billion in daily trading volume on Feb. 26, according to Eric Balchunas, senior ETF analyst at Bloomberg.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">The new nine spot Bitcoin ETFs have recorded combined trading volumes of over $2 billion for the second consecutive day on Feb. 28.</span></p><p><br></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">BlackRock’s iShares Bitcoin Trust ETF recorded over 100,000 individual trades on Feb. 27, up from around 30,000 to 60,000 average daily trades, according to an X post by Balchunas.</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">Another intense volume day for the Nine, with well over $2b traded. $IBIT broke its personal record again w/ $1.3b (for context, that's more than most large-cap US stocks trade). I don't know if this is a new normal or some kind of short-term algo/arb-related burst a la $HODL.&nbsp; Eric Balchunas (@EricBalchunas) February 27, 2024</span></p><p><span style="background-color: transparent; color: rgb(13, 13, 13);">An estimated 75% of new Bitcoin investments came from the spot Bitcoin ETFs in the United States, according to a Feb. 14 report by on-chain data analytics firm CryptoQuant.</span></p><p><br></p>	pexels-ivan-babydov-7788009.jpg			bitcoin-breaches-60k-for-the-first-time-in-over-2-years	2024-02-28 17:51:02.197408	2024-02-28 17:51:02.197408
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."boards" ("id", "title", "name", "body", "boardimg", "slug", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."contacts" ("id", "name", "email", "body", "phone", "website", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: deposits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."deposits" ("id", "payment_type", "amount", "plan", "email", "status", "user_id", "created_at", "updated_at", "confirmed", "account_id") FROM stdin;
1	\N	50,000.00		edorichie@proton.me	\N	12	2024-01-19 12:34:17.627918	2024-01-19 12:34:17.627918	\N	\N
2	\N	50,000.00		edorichie@proton.me	\N	12	2024-01-19 12:34:36.234532	2024-01-19 12:34:36.234532	\N	\N
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."faqs" ("id", "title", "body", "created_at", "updated_at") FROM stdin;
1	What is Bcoins Profit and How does it work?	<p>Bcoins Profits is a leading cryptocurrency broker designed for seamless trading experiences. Our platform allows users to buy, sell, and trade a variety of cryptocurrencies. </p><p>Simply sign up, deposit funds, and start trading!</p><p><br></p>	2024-01-23 22:03:20.724365	2024-01-23 22:03:20.724365
2	How do I create an account on Bcoins Profit	<p>Creating an account is easy. Click on the "Sign Up" button, fill in the required information, and complete the verification process.</p><p>Once verified, you can access all the features on our platform.</p>	2024-01-23 22:04:59.576734	2024-01-23 22:04:59.576734
3	Is Bcoins Profit a regulated crypto broker?	<p>Yes, Bcoins Profits is a fully regulated platform, ensuring a secure and compliant environment for cryptocurrency trading. Your safety and trust are our top priorities.</p>	2024-01-23 22:05:53.635611	2024-01-23 22:05:53.635611
4	Which cryptocurrencies are available for trading on Bcoins Profit	<p>Bcoins Profits supports a wide range of cryptocurrencies, including popular options like Bitcoin (BTC), Ethereum (ETH), Litecoin (LTC), and more. Explore our platform for the full list of available assets.</p><p><br></p>	2024-01-23 22:07:33.079241	2024-01-23 22:07:33.079241
5	How can I deposit funds into my Bcoins Profits account? 	<p>Depositing funds is simple. Navigate to the 'Deposit' section, choose your preferred method, and follow the instructions. We accept various payment options, including bank transfers and credit/debit cards.</p><p><br></p>	2024-01-23 22:08:36.455411	2024-01-23 22:08:36.455411
6	What security measures does Bcoins Profits have in place?	<p>Bcoins Profits prioritizes the security of your assets. We implement advanced encryption, two-factor authentication (2FA), and secure cold storage for cryptocurrencies to safeguard your funds and personal information.</p><p><br></p>	2024-01-23 22:10:39.29776	2024-01-23 22:10:39.29776
7	How are trading fees calculated on Bcoins Profits?	<p>Our transparent fee structure is based on your trading volume and account type. You can find detailed information on trading fees in the 'Fees' section of our platform.</p><p><br></p>	2024-01-23 22:11:59.979331	2024-01-23 22:11:59.979331
8	How can I withdraw my cryptocurrencies to an external wallet?	<p>Yes, Bcoins Profits allows you to withdraw your cryptocurrencies to external wallets for added flexibility and control over your assets.</p><p><br></p>	2024-01-23 22:13:30.233596	2024-01-23 22:13:30.233596
9	Is there a mobile App for Bcoins Profits?	<p>Yes, Bcoins Profits offers a user-friendly mobile app for both iOS and Android devices. Download the app from the respective app stores to trade conveniently on the go.</p><p><br></p>	2024-01-23 22:14:50.099248	2024-01-23 22:14:50.099248
10	How can I contact customer support at Bcoins Profits?	<p>&nbsp;Bcoins Profits provides 24/7 customer support through live chat, email, and phone. Our dedicated support team is ready to assist you with any questions or concerns you may have.</p><p><br></p>	2024-01-23 22:17:22.474239	2024-01-23 22:17:22.474239
\.


--
-- Data for Name: features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."features" ("id", "fimg", "title", "sub_title", "body", "slug", "created_at", "updated_at") FROM stdin;
3	spot_trading_features_image_1.jpg	Spots 	Reassurance Supervised learning system and extremely skilled trade advice with targets and stop losses on USDT and BTC market pairs, with emphasis on rotation and once a week time frames.  		spots	2022-12-30 08:32:35.677497	2022-12-30 08:32:35.677497
4	future_trading_features_image_2.jpg	Futures	Intraday and swing trading calls generated by our reinforcement Machine learning system as well as Expert trade set up will be given with targets, stop loss and leverage recommended. 		futures	2022-12-30 08:38:00.35254	2022-12-30 08:38:00.35254
5	IFA_features_image.jpg	Ifa 		<p><span style="background-color: rgb(255, 255, 255); color: windowtext;">We recognize that everyone's financial needs differ depending on their risk tolerance and expected return. Our experienced financial advisors will create a custom plan to meet your financial needs and investment goals.&nbsp;</span></p>	ifa	2022-12-31 12:44:23.21125	2022-12-31 12:44:23.21125
6	Postional_features_image.jpg	Postional 		<p><span style="background-color: rgb(255, 255, 255); color: windowtext;">Positional trading opportunities will be recommended using a pairing of essential, technical, and sentiment analysis. &nbsp;</span></p>	postional	2022-12-31 12:47:24.132197	2022-12-31 12:47:24.132197
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."feedbacks" ("id", "title", "body", "icon", "slug", "created_at", "updated_at") FROM stdin;
3	Great signal analysis	My task has been much easier because of the nice signal analysis, best wishes. \r\nChristine llin \r\n		\N	2023-01-02 06:52:58.352805	2023-01-02 06:52:58.352805
4	Great User Interface	After utilizing the Bcoins Profit platform for a few months, I can say with certainty that I am really happy with it. Both novice and seasoned traders will find it simple to use the user interface because of its intuitiveness. I'm impressed with the range of cryptocurrencies that may be traded, and the real-time market data supports my decision-making. All in all, a fantastic platform! Harts Montgomery \r\n		\N	2024-01-23 07:18:42.786364	2024-01-23 07:19:30.597633
5	Prompt Client Service	Bravo to the Bcoins Profit staff for providing prompt client service. My question about a transaction was answered quickly and effectively by their support staff. Knowing that a committed team values client satisfaction and operates the platform is comforting. Alesha Davidson 		\N	2024-01-23 07:21:36.592894	2024-01-23 07:21:36.592894
6	Transparent Transaction	The dedication to transparency of Bcoins Profit is what makes it unique. The portal offers comprehensive details on costs, past transactions, and market patterns. This transparency, something I haven't observed in many other cryptocurrency brokers, promotes confidence. Continue the fantastic job! Jonathan Andrews.\r\n\r\n		\N	2024-01-23 07:24:38.291506	2024-01-23 07:24:38.291506
7	Secured Platform	The security measures implemented by Bcoins Profit are commendable. As someone who prioritizes the safety of my investments, I appreciate the multi-layered security features, including two-factor authentication and cold storage for digital assets. It gives me peace of mind while trading. Jakes Blake.\r\n		\N	2024-01-23 07:26:04.174784	2024-01-23 07:26:04.174784
\.


--
-- Data for Name: fxsignals; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."fxsignals" ("id", "body", "entry_point", "exit_point", "slug", "stop_loss", "sell_point1", "sell_point2", "tradetype", "odds", "status", "date", "pairs", "leverage", "call_type", "exchange", "sub", "info", "archive_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: headers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."headers" ("id", "abouts_title", "abouts_sub_title", "services_title", "services_sub_title", "boards_title", "boards_sub_title", "features_title", "features_sub_title", "feedbacks_title", "feedbacks_sub_title", "blogs_title", "blogs_sub_title", "projects_title", "projects_sub_title", "cta1", "cta2", "headerimg", "plans_title", "plans_sub_title", "abouttrade_title", "abouttrade_sub_title", "tradeservices_title", "tradeservices_sub_title", "tradesignal_title", "tradesignal_sub_title", "servicemain_title", "servicemain_sub_title", "tradeplan_title", "tradeplan_sub_title", "created_at", "updated_at") FROM stdin;
1	About Us	We are a licensed firm that provides crypto loans and computerized resource speculation to both individuals and organizations. 	Our Services	What We Offer	Our team		Why Choose Us	One of the biggest major traders in the world of digital assets 	Feedbacks 	What our Clients Say about Us	Daily Insights	Join  our information band wagon directly on your hands 					\N	Our Packages 	Here are our packages <br /> tailored for your  <span>success</span>	Our Trade Models	The sudden surge and tank moments that occur in the crypto market on a regular basis can also be captured with less risk and more rewards using our reinforcement ML algorithm. 	Our trade signal models	The sudden surge and tank moments that occur in the crypto market on a regular basis can also be captured with less risk and more rewards using our reinforcement ML algorithm. 	Our trade signal models		What we deliver	Access Funds & Sophisticated Trading Solutions   We Give  customers access to unmatched resources, trading knowledge, and market information. 			2022-12-26 02:58:33.905041	2024-01-02 11:16:23.623599
\.


--
-- Data for Name: plans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."plans" ("id", "amount", "name", "referal", "duration", "plan", "plan_name", "mini", "maxi", "body", "created_at", "updated_at", "roi") FROM stdin;
9	5000	Premium 	7%	Monthly	\N	Premium 	5,000	29,999	<ul><li>11% weekly returns</li><li>Scan markets with the power of 15 bots</li><li>2 event based triggers</li><li>Backtesting</li><li>Strategy Designer</li><li>Paper (simulated) trading</li><li>Trading signals (Signalers)</li><li>24hrs support</li><li>Dynamic Dashboard</li><li>Automatic payout in cryptocurrency</li></ul>	2024-02-05 19:58:13.547132	2024-02-05 22:51:37.077274	\N
8	1,500	Basic	5%	weekly	\N	Basic	1500	5,999	<ul><li>7% weekly returns</li><li>3 Futures Signals</li><li>4 Spot Trades</li><li>Access to support Team</li><li>Dynamic Dashboard</li><li>Automatic payout in cryptocurrency</li></ul>	2024-02-05 19:56:18.844734	2024-02-05 22:58:18.482894	\N
10	50,000	Pro+ (Best Plan)	9%	Monthly	\N	Pro+ (Best Plan)	50,0000	5,000,000	<ul><li>15% weekly returns</li><li>500 open positions / exchange</li><li>2 minute strategy interval checks</li><li>Scan markets with the power of 75 bots</li><li>10 event based triggers</li><li>A.I. strategies and A.I designer</li><li>All coins for trading signals</li><li>Market Making &amp; Arbitrage</li><li>Extra Technical Indicators</li><li>Dynamic Dashboard</li><li>Automatic payout in cryptocurrency</li></ul>	2024-02-05 20:01:29.122465	2024-02-05 23:05:53.480028	\N
\.


--
-- Data for Name: pms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pms" ("id", "title", "walletimg", "address", "con", "created_at", "updated_at") FROM stdin;
1	Bitcoin	WhatsApp_Image_2024-02-15_at_8.34.09_PM.jpeg	bc1qrjx7r8c0mnz32xltygvhuaympky6u7nl3q7ywj	\N	2024-02-15 20:51:04.886109	2024-02-15 20:51:04.886109
2	Ethereum	WhatsApp_Image_2024-02-15_at_9.04.45_PM.jpeg	0x71f130780f0c46C75fb702A65dC9A7F127e185c0	\N	2024-02-15 20:56:07.054031	2024-02-15 20:56:07.054031
3	Usdt	WhatsApp_Image_2024-02-15_at_9.06.44_PM.jpeg	0x71f130780f0c46C75fb702A65dC9A7F127e185c0	\N	2024-02-15 20:57:03.416345	2024-02-15 20:57:03.416345
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."products" ("id", "name", "sub_title", "price", "pimg", "link", "slug", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."schema_migrations" ("version") FROM stdin;
20221112042554
20221112042558
20221112042829
20221112043312
20221112043501
20221112044023
20221114010204
20221114010538
20221114010716
20221114011047
20221114011527
20221114012828
20221114012857
20221114013104
20221114092831
20221114095042
20221114100044
20221114130001
20221114130741
20221114134334
20221114134437
20221114141459
20221114143221
20221114145448
20221114153128
20221117202840
20230319085747
20230320114503
20230320114823
20230320114906
20240117133510
20240117213204
20240205231557
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."sections" ("id", "title", "body", "created_at", "updated_at") FROM stdin;
1	Creating An Innovative Future & Financial Freedom	Gain Access to Intelligent Trading Solutions & Resources,  Jackville Xchange,  model provides access to unparalleled resources, trading expertise, and market insight	2022-12-30 02:33:39.309814	2022-12-30 02:33:39.309814
2	Professional and Corporate Trading	We have a customized offering that has been expertly tailored to meet the unique requirements of professional and institutional traders.	2022-12-30 06:58:05.74705	2022-12-30 06:58:05.74705
3	Gurantee, Highly reliable and Safe	We utilize the vast amount of experience, insight, and expertise of the perfect fields of security and use it to our competitive edge. 	2022-12-30 06:59:26.5505	2022-12-30 06:59:26.5505
\.


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."services" ("id", "title", "slug", "icon", "sub_title", "body", "serviceimg", "created_at", "updated_at") FROM stdin;
1	Digital Trading & Execution Solutions.	principal-investments		One of the biggest major traders in the market for digital assets is digitally. We specialize in creating markets with counterparties in institutional sizes for digital assets.	<p>In the world of digital assets, Jackville Exchange offers exclusive counterparty access. </p><p>Beyond trading solutions, Galaxy Digital serves as a portal to the full community of digital assets and blockchain. We are thrilled to establish alliances in an asset class that is radically altering the face of the planet.&nbsp;</p><p>Accessing Bitcoin Easily, Quickly, and Securely&nbsp;</p><p>Without the hassle of purchasing and storing them, the  jackville exchange bitcoin Fund offers institutions and high-net-worth individuals rapid, secure access to significant amounts of bitcoin. The Fund has very cheap fees and everyday liquidity (see summary of terms below).</p>	pexels-ivan-babydov-7788009.jpg	2022-12-29 21:39:19.20236	2022-12-31 17:47:07.849177
3	Premium Trade Signals	premium-trade-signals		We provide you with premium, reliable and timely trading signals. Our experienced market analysts and traders have been in the financial markets for years.  	<p class="ql-align-justify"><span style="color: windowtext;">Obtaining the knowledge and experience to predict movements in the market ahead of time. </span></p><p class="ql-align-justify"><span style="color: windowtext;">We provide high quality market insights, delivered as a simple actionable trading signal. Although not all our predictions are correct, most of our followers are happy with our signals.&nbsp;All knowledge is good knowledge when planning your next trade.&nbsp;</span></p><p class="ql-align-justify"><strong style="color: windowtext;">Digital Ventures.&nbsp;</strong></p><p class="ql-align-justify"><span style="color: windowtext;">We manage a diverse portfolio of early-stage investments primarily centered around blockchain infrastructure, custody, exchanges, ecosystems, and business to business (B2B) software solutions. In addition to funding investments through our Principal Investments team, we also manage a $325 million venture fund that seeks to directly invest in emerging projects and opportunities supported by the EOS blockchain.&nbsp;</span></p><p><br></p>	future_trading_features_image_2.jpg	2022-12-29 21:40:29.170299	2023-01-02 19:23:27.045924
2	Crypto Loans & Mortgage 	crypto-loans-mortgage		You no longer need to postpone pursuing your ambitions with the help of our cryptocurrency-backed lending service. Use your cryptocurrencies as leverage to cover a significant expense. 	<p class="ql-align-justify"><span style="color: windowtext;">Lending bitcoin is for active hodlers who wish to add additional bitcoin to their portfolio and profit from its rise without having to sell any alternative currencies. Profit from BTC pumps and dumps while also using a quick BTC loan to hedge altcoins on Jackvillexchange.&nbsp;</span></p><p class="ql-align-justify"><strong>How to Borrow Cryptocurrency</strong>&nbsp;</p><p>We make it easy to get and manage your crypto loan.&nbsp;</p><p><strong>How to calculate your LTV</strong>&nbsp;</p><p>Calculate your crypto backed loan using different collateral and LTV options, then specify your payout address where you want to receive funds. Confirm it by phone or email.&nbsp;</p><p>Send us the collateral and we will send you the loan amount to your payout address without any delays or additional checks.&nbsp;</p><p><strong> Start spending</strong>&nbsp;</p><p>Use your loan if you want. We will just draw your attention to the rate of your collateral currency in time.&nbsp;</p><p><strong>Get back your collateral</strong>&nbsp;</p><p>At any moment you can pay your collateral back. To do this, you need to pay the full price of Repayment, and when we get it, we will return your collateral.&nbsp;</p>	3.png	2022-12-29 21:39:48.764217	2023-01-04 15:14:50.237827
\.


--
-- Data for Name: tradeplans; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."tradeplans" ("id", "amount", "name", "referal", "duration", "plan", "plan_name", "mini", "maxi", "body", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: trades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."trades" ("id", "currency", "deposit", "expiration", "status", "tradetype", "entry", "rate", "return", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: tradeservices; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."tradeservices" ("id", "title", "slug", "icon", "sub_title", "body", "tserviceimg", "created_at", "updated_at") FROM stdin;
4	Token Management	token-management	\N	By offering Arbitrage & Spread Management and tailored market making, to ensure fair price discoveries across ecosystems and exchange with effective risk hedging, we address issues for tokens including lack of liquidity and price manipulation. 	<p class="ql-align-justify"><span style="color: windowtext;">We offer an integrated token display and a seamless token management solution.&nbsp;</span></p><ul><li>Simple to Use&gt; With the help of our token management system, token generation can be collected with only a touch.&nbsp;</li><li>Seamless&gt; All procedures are smoothly integrated to reduce difficulties. An excellent token management solution for banks, clinics, and healthcare facilities.&nbsp;</li><li>Lightweight&gt; A cloud-based guest queue management solution that doesn't need bulky, expensive hardware is called lightweight.&nbsp;</li></ul><p><br></p>	\N	2023-01-04 14:02:21.04507	2023-01-04 15:09:47.353446
5	Treasure Management	treasure-management	\N	Take advantage of our financial professionals' aversion to risk, who manage investments and digital assets to maximize liquidity and oversee policies to reduce operational and reputational concerns. 	<p class="ql-align-justify"><span style="color: windowtext;">Jackvill Exchange is a risk management and treasury platform that allows users to manage liquidity, financial risk, and cash flow. We provide a scalable, cloud-based solution that empowers banks to effectively manage financial risk, hedge accounting, and liquidity.&nbsp;&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">We belong to the ION group, which provides businesses, governments, and central banks with workflow automation and trading solutions. To provide top-notch financial software with corporate treasury management and other important features, its developers make use of the most recent technologies.&nbsp;</span></p><p class="ql-align-justify"><span style="color: windowtext;">With solutions for cash and risk management, payments, and supply chain finance, Jackvill Exchange seeks to empower financial leaders and their teams.&nbsp;</span></p><p><br></p>	\N	2023-01-04 15:11:47.535763	2023-01-04 15:11:47.535763
6	Research and Advisory	research-and-advisory	\N	Because crypto markets are primarily hype-driven, that is why Jackvill Exchange wants to provide accurate and trustworthy information to assist individual investors in making wise choices.	<p class="ql-align-justify"><span style="color: windowtext;">Thanks to data-driven market research and analysis, consumers never have to consider their purchasing choices. By leveraging real-time research and market data, as well as projects that have been adequately vetted, analyzed, and expert judgements, users are empowered by a complete awareness of the trends, price movement, opportunities, and volume. Our skilled trading staff uses internal machine learning algorithms and AI-based market sentiment monitoring to generate trade recommendations.&nbsp;</span></p>	\N	2023-01-04 15:13:49.986822	2023-01-04 15:13:49.986822
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."users" ("id", "email", "encrypted_password", "reset_password_token", "reset_password_sent_at", "remember_created_at", "sign_in_count", "current_sign_in_at", "last_sign_in_at", "current_sign_in_ip", "last_sign_in_ip", "confirmation_token", "confirmed_at", "confirmation_sent_at", "unconfirmed_email", "failed_attempts", "unlock_token", "locked_at", "created_at", "updated_at", "status", "username", "referal", "phone") FROM stdin;
1	derick.fadel24@banglemail.com	$2a$12$yn8n9bqc1bXrvB4zTK9D/.7UR9S0JfQX7ygEqFSwQ24w0B9yHgbOK	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-30 15:13:06.214565	2023-12-30 15:13:06.214565	t	derick.fadel24@banglemail.com	derick.fadel24@banglemail.com	7883283509
2	haley.greenfelder10@eaglesmail.net	$2a$12$O3wJKJIfpXrq9jZxs/YjseWKWwxjhX5J93/pGXL2GYLNu1mBmigFO	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-30 17:27:42.366402	2023-12-30 17:27:42.366402	t	haley.greenfelder10@eaglesmail.net	haley.greenfelder10@eaglesmail.net	480091588
3	jørgen_aalerud@usaaxa.com	$2a$12$D9vTI5iFHHU/wc.1/z/nBu8bBY97zcjF15HNNfVDqvC5ZPm68fZla	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-30 23:12:06.31614	2023-12-30 23:12:06.31614	t	jørgen_aalerud@usaaxa.com	jørgen_aalerud@usaaxa.com	7401068113
4	paulina_grau42@ifastnet1.com	$2a$12$d1kw3P2QBo3cLXJSk91hoOP20OdP6RYj3puodQt.ELEoRDUeSkwJu	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-31 08:21:30.390108	2023-12-31 08:21:30.390108	t	paulina_grau42@ifastnet1.com	paulina_grau42@ifastnet1.com	7449753129
5	henrik_martinsen@orimi.co	$2a$12$mIA30zIkNjwvQADJh7K3N.NVtQbXfsVlYRWGtO5HBroQy8a9mbPqe	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-31 15:00:12.915707	2023-12-31 15:00:12.915707	t	henrik_martinsen@orimi.co	henrik_martinsen@orimi.co	4504997864
6	helene25@rezult.org	$2a$12$N.3Wkub2Djbc.OY7L4JyN.SxhMGVyG3mpxlK6NCXKNe.CWnL.cCqy	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-31 21:32:09.107266	2023-12-31 21:32:09.107266	t	helene25@rezult.org	helene25@rezult.org	7782590045
7	niels38@recodz.com	$2a$12$LjMIfEDv5rmUY8CnscUX6Oqzag2XHhhCcLzoh9rsc/8obVp8xjLi2	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2023-12-31 23:10:07.574823	2023-12-31 23:10:07.574823	t	niels38@recodz.com	niels38@recodz.com	8647079257
9	raylinemann3@gmail.com	$2a$12$zV3VdxFv7hZxOq2VVjVp3eJVl0/9AKKWQ6Yq/oHWzFK.R5kbI/xza	\N	\N	2024-01-02 20:25:11.473735	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-02 17:16:25.777512	2024-01-02 20:25:11.474276	t	raylinemann3	hanskocherenow@gmail.com	08146609147
8	macmillaneze29@gmail.com	$2a$12$PiuKLEDri5S/.Hi9L2C.Nev5FTBGAz8W6ruJXdlS.JsITsOY6JRLG	2382fd97b3bdb7e82e2a80e638c97abb7b88e8664dfa3de1aa51b81cb5d3d7df	2024-01-13 08:58:04.374681	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-02 16:56:33.164761	2024-01-13 08:58:04.375635	t	Ezemav		
10	ezem82773@gmail.com	$2a$12$g.kcksZXl0LpI.jDf.AEM.iKoQRQc/cPblFLdXZg1as7Z8Yd.WpU2	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-17 07:13:40.446517	2024-01-17 07:13:40.446517	t	Ezehere		
11	da@gmail.com	$2a$12$voWETl1JJ2UxgCsIjAq3S.FiYGXjSKopElt4lol.F77/UVphI3t0q	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-17 13:26:48.649431	2024-01-17 13:26:48.649431	t	dave		
12	edorichie@proton.me	$2a$12$ddzD3P9syNbTsNtkH8oBu..UZBb3Waw0yYZ0KsY82enbq9dCdLvQy	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-19 12:31:32.976674	2024-01-19 12:31:32.976674	t			2027135586
13	hanskocherenow@gmail.com	$2a$12$jCkknPZURb7ASc37lUjNNu7ginv51W6gfKPh37kfMAS2hWnloFoV2	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-01-24 00:14:36.267555	2024-01-25 09:35:45.474576	t	Rsylinehere		
14	omsinesmadi@gmail.com	$2a$12$SGZPPfHdcQZvS6BoH6akHuQvLc.tF1dqNKv6AadzdSxSB2oS8XJ42	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-01 20:25:37.220233	2024-02-01 20:25:37.220233	t	Aidan	omsinesmadi@gmail.com	0769142143
15	laron94@bdcimail.com	$2a$12$jZ9fSBFMo7r1mTCk0uFrAOey9U4tBFoVPtLmCI89xMwY2drUnBMf.	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-22 01:22:38.750048	2024-02-22 01:22:38.750048	t	laron94@bdcimail.com	laron94@bdcimail.com	3254002098
16	thomas.heuvel6@twinbash.co	$2a$12$0pGPRJnUYHjTzCs6avpRpe.JNIyVeJijHp7IDWgd8TTTKylCGi3cm	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-22 04:24:49.164653	2024-02-22 04:24:49.164653	t	thomas.heuvel6@twinbash.co	thomas.heuvel6@twinbash.co	7782340400
17	markgaffen@gmx.com	$2a$12$rGsaKDVaK23AKVBvNxB6Q.NvibrhC/62pJELpH7auVaV6v9ttGdI6	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-22 12:05:33.829078	2024-02-22 12:05:33.829078	t	markgaffen		2027135586
18	dada@gmail.com	$2a$12$wwsfq/sIdH8mGzoENakI2O2/VhTmz73sV2CMEFK.tIfMxisYhTGm.	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-25 22:03:03.68801	2024-02-25 22:03:03.68801	t	daveiofdi		
19	annie76@devaza.id	$2a$12$qKhwaX8jkX7qgdpuSdPcQ./0L7RWEN7CHM.AKMxon.hoH0bJJgaTi	\N	\N	\N	0	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	2024-02-27 16:20:40.077686	2024-02-27 16:20:40.077686	t	annie76@devaza.id	annie76@devaza.id	7400329923
\.


--
-- Data for Name: welcomes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."welcomes" ("id", "title", "logoimg", "desc", "whatsapp", "ig", "ln", "section", "link", "footer", "phone", "address", "twitter", "email", "youtube", "telegram", "created_at", "updated_at") FROM stdin;
1	Bit-Coins x Profits- ||Your All-in-One Portfolio Manager,  Trade with Us Today 	33.png	Elevate Your Investments with Coins x Profits LLC - Your All-in-One Portfolio Manager for Coins and Investments!				Track, analyze, and optimize your cryptocurrency and investment portfolio effortlessly with our state-of-the-art app. Your financial future deserves the best, and Coins x Profits  is here to make it happen	\N	support@bcoinxprofits.com		729 Hays, Nashville, USA		\N	\N		2022-12-25 17:24:56.262266	2024-02-21 14:18:14.236688
\.


--
-- Data for Name: withdraws; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."withdraws" ("id", "payment_type", "amount", "plan", "email", "status", "user_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: abouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."abouts_id_seq"', 3, true);


--
-- Name: abouttrades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."abouttrades_id_seq"', 5, true);


--
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."accounts_id_seq"', 5, true);


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."active_admin_comments_id_seq"', 1, false);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."admin_users_id_seq"', 1, true);


--
-- Name: archives_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."archives_id_seq"', 1, false);


--
-- Name: banners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."banners_id_seq"', 6, true);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."blogs_id_seq"', 20, true);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."boards_id_seq"', 1, false);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."contacts_id_seq"', 1, false);


--
-- Name: deposits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."deposits_id_seq"', 2, true);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."faqs_id_seq"', 10, true);


--
-- Name: features_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."features_id_seq"', 6, true);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."feedbacks_id_seq"', 7, true);


--
-- Name: fxsignals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."fxsignals_id_seq"', 1, false);


--
-- Name: headers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."headers_id_seq"', 1, true);


--
-- Name: plans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."plans_id_seq"', 12, true);


--
-- Name: pms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pms_id_seq"', 3, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."products_id_seq"', 1, false);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."sections_id_seq"', 3, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."services_id_seq"', 3, true);


--
-- Name: tradeplans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."tradeplans_id_seq"', 1, false);


--
-- Name: trades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."trades_id_seq"', 1, false);


--
-- Name: tradeservices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."tradeservices_id_seq"', 6, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."users_id_seq"', 19, true);


--
-- Name: welcomes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."welcomes_id_seq"', 1, true);


--
-- Name: withdraws_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."withdraws_id_seq"', 1, false);


--
-- Name: abouts abouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."abouts"
    ADD CONSTRAINT "abouts_pkey" PRIMARY KEY ("id");


--
-- Name: abouttrades abouttrades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."abouttrades"
    ADD CONSTRAINT "abouttrades_pkey" PRIMARY KEY ("id");


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "accounts_pkey" PRIMARY KEY ("id");


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."active_admin_comments"
    ADD CONSTRAINT "active_admin_comments_pkey" PRIMARY KEY ("id");


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."admin_users"
    ADD CONSTRAINT "admin_users_pkey" PRIMARY KEY ("id");


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."ar_internal_metadata"
    ADD CONSTRAINT "ar_internal_metadata_pkey" PRIMARY KEY ("key");


--
-- Name: archives archives_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."archives"
    ADD CONSTRAINT "archives_pkey" PRIMARY KEY ("id");


--
-- Name: banners banners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."banners"
    ADD CONSTRAINT "banners_pkey" PRIMARY KEY ("id");


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."blogs"
    ADD CONSTRAINT "blogs_pkey" PRIMARY KEY ("id");


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."boards"
    ADD CONSTRAINT "boards_pkey" PRIMARY KEY ("id");


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."contacts"
    ADD CONSTRAINT "contacts_pkey" PRIMARY KEY ("id");


--
-- Name: deposits deposits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."deposits"
    ADD CONSTRAINT "deposits_pkey" PRIMARY KEY ("id");


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faqs"
    ADD CONSTRAINT "faqs_pkey" PRIMARY KEY ("id");


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."features"
    ADD CONSTRAINT "features_pkey" PRIMARY KEY ("id");


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."feedbacks"
    ADD CONSTRAINT "feedbacks_pkey" PRIMARY KEY ("id");


--
-- Name: fxsignals fxsignals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."fxsignals"
    ADD CONSTRAINT "fxsignals_pkey" PRIMARY KEY ("id");


--
-- Name: headers headers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."headers"
    ADD CONSTRAINT "headers_pkey" PRIMARY KEY ("id");


--
-- Name: plans plans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."plans"
    ADD CONSTRAINT "plans_pkey" PRIMARY KEY ("id");


--
-- Name: pms pms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pms"
    ADD CONSTRAINT "pms_pkey" PRIMARY KEY ("id");


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."products"
    ADD CONSTRAINT "products_pkey" PRIMARY KEY ("id");


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."schema_migrations"
    ADD CONSTRAINT "schema_migrations_pkey" PRIMARY KEY ("version");


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."sections"
    ADD CONSTRAINT "sections_pkey" PRIMARY KEY ("id");


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."services"
    ADD CONSTRAINT "services_pkey" PRIMARY KEY ("id");


--
-- Name: tradeplans tradeplans_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tradeplans"
    ADD CONSTRAINT "tradeplans_pkey" PRIMARY KEY ("id");


--
-- Name: trades trades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."trades"
    ADD CONSTRAINT "trades_pkey" PRIMARY KEY ("id");


--
-- Name: tradeservices tradeservices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."tradeservices"
    ADD CONSTRAINT "tradeservices_pkey" PRIMARY KEY ("id");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");


--
-- Name: welcomes welcomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."welcomes"
    ADD CONSTRAINT "welcomes_pkey" PRIMARY KEY ("id");


--
-- Name: withdraws withdraws_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."withdraws"
    ADD CONSTRAINT "withdraws_pkey" PRIMARY KEY ("id");


--
-- Name: index_abouts_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_abouts_on_slug" ON "public"."abouts" USING "btree" ("slug");


--
-- Name: index_abouttrades_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_abouttrades_on_slug" ON "public"."abouttrades" USING "btree" ("slug");


--
-- Name: index_accounts_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_accounts_on_slug" ON "public"."accounts" USING "btree" ("slug");


--
-- Name: index_accounts_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_accounts_on_user_id" ON "public"."accounts" USING "btree" ("user_id");


--
-- Name: index_active_admin_comments_on_author; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_active_admin_comments_on_author" ON "public"."active_admin_comments" USING "btree" ("author_type", "author_id");


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_active_admin_comments_on_namespace" ON "public"."active_admin_comments" USING "btree" ("namespace");


--
-- Name: index_active_admin_comments_on_resource; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_active_admin_comments_on_resource" ON "public"."active_admin_comments" USING "btree" ("resource_type", "resource_id");


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_admin_users_on_email" ON "public"."admin_users" USING "btree" ("email");


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_admin_users_on_reset_password_token" ON "public"."admin_users" USING "btree" ("reset_password_token");


--
-- Name: index_archives_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_archives_on_slug" ON "public"."archives" USING "btree" ("slug");


--
-- Name: index_blogs_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_blogs_on_slug" ON "public"."blogs" USING "btree" ("slug");


--
-- Name: index_boards_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_boards_on_slug" ON "public"."boards" USING "btree" ("slug");


--
-- Name: index_deposits_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_deposits_on_user_id" ON "public"."deposits" USING "btree" ("user_id");


--
-- Name: index_features_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_features_on_slug" ON "public"."features" USING "btree" ("slug");


--
-- Name: index_feedbacks_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_feedbacks_on_slug" ON "public"."feedbacks" USING "btree" ("slug");


--
-- Name: index_fxsignals_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_fxsignals_on_slug" ON "public"."fxsignals" USING "btree" ("slug");


--
-- Name: index_fxsignals_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_fxsignals_on_status" ON "public"."fxsignals" USING "btree" ("status");


--
-- Name: index_products_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_products_on_slug" ON "public"."products" USING "btree" ("slug");


--
-- Name: index_services_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_services_on_slug" ON "public"."services" USING "btree" ("slug");


--
-- Name: index_trades_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_trades_on_user_id" ON "public"."trades" USING "btree" ("user_id");


--
-- Name: index_tradeservices_on_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_tradeservices_on_slug" ON "public"."tradeservices" USING "btree" ("slug");


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "public"."users" USING "btree" ("confirmation_token");


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_users_on_email" ON "public"."users" USING "btree" ("email");


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "public"."users" USING "btree" ("reset_password_token");


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "index_users_on_unlock_token" ON "public"."users" USING "btree" ("unlock_token");


--
-- Name: index_withdraws_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "index_withdraws_on_user_id" ON "public"."withdraws" USING "btree" ("user_id");


--
-- Name: trades fk_rails_12b0ea7696; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."trades"
    ADD CONSTRAINT "fk_rails_12b0ea7696" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");


--
-- Name: deposits fk_rails_88307c7ed2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."deposits"
    ADD CONSTRAINT "fk_rails_88307c7ed2" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");


--
-- Name: withdraws fk_rails_910faa0ea7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."withdraws"
    ADD CONSTRAINT "fk_rails_910faa0ea7" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");


--
-- Name: accounts fk_rails_b1e30bebc8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."accounts"
    ADD CONSTRAINT "fk_rails_b1e30bebc8" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");


--
-- PostgreSQL database dump complete
--

