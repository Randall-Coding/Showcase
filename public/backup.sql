PGDMP     
                	    w            showcase_development %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) *    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    33418    showcase_development    DATABASE     �   CREATE DATABASE showcase_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 $   DROP DATABASE showcase_development;
             mcgoy    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13039    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    33570    admins    TABLE     R  CREATE TABLE public.admins (
    id bigint NOT NULL,
    username character varying,
    password character varying,
    password_digest character varying,
    password_confirmation character varying,
    token character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.admins;
       public         mcgoy    false    3            �            1259    33568    admins_id_seq    SEQUENCE     v   CREATE SEQUENCE public.admins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.admins_id_seq;
       public       mcgoy    false    205    3            �           0    0    admins_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;
            public       mcgoy    false    204            �            1259    33428    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         mcgoy    false    3            �            1259    33537    messages    TABLE     �   CREATE TABLE public.messages (
    id bigint NOT NULL,
    body character varying,
    email character varying,
    "from" character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.messages;
       public         mcgoy    false    3            �            1259    33535    messages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public       mcgoy    false    3    199            �           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
            public       mcgoy    false    198            �            1259    33559    portfolio_items    TABLE     c  CREATE TABLE public.portfolio_items (
    id bigint NOT NULL,
    css_class character varying,
    title character varying,
    logo character varying,
    url character varying,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_url character varying
);
 #   DROP TABLE public.portfolio_items;
       public         mcgoy    false    3            �            1259    33557    portfolio_items_id_seq    SEQUENCE        CREATE SEQUENCE public.portfolio_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.portfolio_items_id_seq;
       public       mcgoy    false    203    3            �           0    0    portfolio_items_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.portfolio_items_id_seq OWNED BY public.portfolio_items.id;
            public       mcgoy    false    202            �            1259    33420    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         mcgoy    false    3            �            1259    33548    transactions    TABLE     �   CREATE TABLE public.transactions (
    id bigint NOT NULL,
    "txHash" character varying,
    data character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.transactions;
       public         mcgoy    false    3            �            1259    33546    transactions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       mcgoy    false    201    3            �           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
            public       mcgoy    false    200                       2604    33573 	   admins id    DEFAULT     f   ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);
 8   ALTER TABLE public.admins ALTER COLUMN id DROP DEFAULT;
       public       mcgoy    false    204    205    205                        2604    33540    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public       mcgoy    false    198    199    199                       2604    33562    portfolio_items id    DEFAULT     x   ALTER TABLE ONLY public.portfolio_items ALTER COLUMN id SET DEFAULT nextval('public.portfolio_items_id_seq'::regclass);
 A   ALTER TABLE public.portfolio_items ALTER COLUMN id DROP DEFAULT;
       public       mcgoy    false    202    203    203                       2604    33551    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       mcgoy    false    201    200    201            �          0    33570    admins 
   TABLE DATA                  COPY public.admins (id, username, password, password_digest, password_confirmation, token, created_at, updated_at) FROM stdin;
    public       mcgoy    false    205   �-       �          0    33428    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       mcgoy    false    197   ;.       �          0    33537    messages 
   TABLE DATA               S   COPY public.messages (id, body, email, "from", created_at, updated_at) FROM stdin;
    public       mcgoy    false    199   �.       �          0    33559    portfolio_items 
   TABLE DATA               z   COPY public.portfolio_items (id, css_class, title, logo, url, description, created_at, updated_at, image_url) FROM stdin;
    public       mcgoy    false    203   �.       �          0    33420    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       mcgoy    false    196   �3       �          0    33548    transactions 
   TABLE DATA               R   COPY public.transactions (id, "txHash", data, created_at, updated_at) FROM stdin;
    public       mcgoy    false    201   �3       �           0    0    admins_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.admins_id_seq', 1, true);
            public       mcgoy    false    204            �           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 1, false);
            public       mcgoy    false    198            �           0    0    portfolio_items_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.portfolio_items_id_seq', 10, true);
            public       mcgoy    false    202            �           0    0    transactions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);
            public       mcgoy    false    200                       2606    33578    admins admins_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public         mcgoy    false    205                       2606    33435 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         mcgoy    false    197            	           2606    33545    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public         mcgoy    false    199                       2606    33567 $   portfolio_items portfolio_items_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.portfolio_items
    ADD CONSTRAINT portfolio_items_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.portfolio_items DROP CONSTRAINT portfolio_items_pkey;
       public         mcgoy    false    203                       2606    33427 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         mcgoy    false    196                       2606    33556    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         mcgoy    false    201            �   �   x�U���   �3<E� z��r5�e��y!�f�*�|����ۇ�C�ZV�j��.A��H#ka�>�o�?�8�XbRy�g1|�,�����d�[G����h���L�HB����C��a���&d���z>���9���|2s8�#�~�K-�      �   ?   x�K�+�,���M�+�LI-K��/ ��-ut�����L��-�,�M�LL�Hq��qqq ��r      �      x������ � �      �   �  x����o�8ǟݿ���m@�8��+��[7`�f�=0(6ck�%C��f��rҤM�����1)�~Ii���pc�]�f���%�F���/�t�cD/�ڢsQ�}�潞ˬ���V�\(��\�"�L}�����X��l�˒�U-�����y���{�b�?�dK��c%�����_",��C�6(X5:��h��_m,�̖�o:0Pd%Ԣ�.2��T�{k��?UdJI������Q�ZV��t�����W�;{(��&nj&�$z+���Y��0[t�[����$wȔp�ug-)�����k���p��A�v9|���yO^Diҟ��'����|4���8�G���^ݛ��-�Vg��Pt���XF����R�^�g�B�=$팾�� ������eDq���#;���pI��_���Ɓ�khs|����K[[�1��yΛ�wfQP=3�HBy�$���1�^��Q(�/����lJ�ZAK���NQ�Qa�c� 8c}+�}������Z�H���j�H�yV
�Y��젤T-��U؉�=p�^V'	>-�l>���q:��?{�֬׺8FH�Xl�hA9��GI:�k�ad�T��f��*��	e�j�b�������7l�������r�-�@aMSCE�Mu�<n��^�+������d����1w���T���۽gۨ9��8%��0�����?~՟��<I�t:��'�>U�4:p�,��������Uf|��u�d�v�)>����ǘ8����t{�5�B��B�������3Ŗhr��L59	��(KO9ޓ#񥬵l�.�S_vᦪI��4]�2�;��:D�������y:�G�h��N	��x���)&=9:w蜁��D�k���?>lWEh�'�;C�E)��,=w<m�&���u!��<�6+��e%�z��f%��l�7��:�������a��?�?�_��c�>��������Ɍ%?��}LL{|�����R&��������sw����tCJ-lH��U�v�><��wt�.֍�x�U�d��q�����z�ޝк ^���W	J:ρ�<�a8�n�%�[� �C���E���ϊ7e��a2|<F�xޟ��Y��&��A:�P����+����X��lI�s�n)H�5t��%���:�U{!	n�l�nFr%�Lq �=O�p�,�@�`�B�uD^I�;�Z��Fz�'9�w!�� ػ��Rm3nB��8�����M����$ңi�$�q�0�㳳�� |d�      �   8   x�EǱ !���y���^迎��h4�m���[Μθ]2�+��Q��WU?`w�      �      x������ � �     