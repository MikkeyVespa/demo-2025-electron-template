PGDMP  .    .                }            forEx042025    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16994    forEx042025    DATABASE     �   CREATE DATABASE "forEx042025" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "forEx042025";
                     postgres    false            �            1259    17047    deals    TABLE     �   CREATE TABLE public.deals (
    id integer NOT NULL,
    product text,
    partner_id integer,
    quantity integer,
    sale_date date
);
    DROP TABLE public.deals;
       public         heap r       postgres    false            �            1259    17046    deals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.deals_id_seq;
       public               postgres    false    220            �           0    0    deals_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.deals_id_seq OWNED BY public.deals.id;
          public               postgres    false    219            �            1259    16996    partners    TABLE     �   CREATE TABLE public.partners (
    id integer NOT NULL,
    type text,
    name text,
    director text,
    email text,
    phone text,
    address text,
    inn text,
    rating integer
);
    DROP TABLE public.partners;
       public         heap r       postgres    false            �            1259    16995    partners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.partners_id_seq;
       public               postgres    false    218            �           0    0    partners_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.partners_id_seq OWNED BY public.partners.id;
          public               postgres    false    217            '           2604    17050    deals id    DEFAULT     d   ALTER TABLE ONLY public.deals ALTER COLUMN id SET DEFAULT nextval('public.deals_id_seq'::regclass);
 7   ALTER TABLE public.deals ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            &           2604    16999    partners id    DEFAULT     j   ALTER TABLE ONLY public.partners ALTER COLUMN id SET DEFAULT nextval('public.partners_id_seq'::regclass);
 :   ALTER TABLE public.partners ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    17047    deals 
   TABLE DATA           M   COPY public.deals (id, product, partner_id, quantity, sale_date) FROM stdin;
    public               postgres    false    220   �       �          0    16996    partners 
   TABLE DATA           `   COPY public.partners (id, type, name, director, email, phone, address, inn, rating) FROM stdin;
    public               postgres    false    218   �       �           0    0    deals_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.deals_id_seq', 1, false);
          public               postgres    false    219            �           0    0    partners_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.partners_id_seq', 1, false);
          public               postgres    false    217            +           2606    17054    deals deals_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.deals
    ADD CONSTRAINT deals_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.deals DROP CONSTRAINT deals_pkey;
       public                 postgres    false    220            )           2606    17003    partners partners_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.partners DROP CONSTRAINT partners_pkey;
       public                 postgres    false    218            ,           2606    17055    deals deals_partner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.deals
    ADD CONSTRAINT deals_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.partners(id);
 E   ALTER TABLE ONLY public.deals DROP CONSTRAINT deals_partner_id_fkey;
       public               postgres    false    218    4649    220            �   �  x��TKN�0]ۧ��<c�i��aڂ`A%6,�X�aO���0��IӴ] �U�����{~6)y�i�R�4�ƏF>�J#LM��cP�&M¥�1|���
I|���f-���"E1:�ر��[������y�;6�nd�r�\��<'����*�t�B`�F�x�>n��-��?��O�����5�&��)�*Y ���:X׳��A�3@��
���4��B�;�~7��2M�Qɶ�X�US�3/�:b{�ZA������eH�Ԁeìĳ���e&E�8$�zĭ�.Z*t�D;dw�bq.��*blK֑�WE�Yf=��7����hFM�D�*\�;�N���w}�Ӫ����B�<4���%�|:[���� �^сY�&�s9vT
���Ŭk+w�<q}���r���      �   n  x��S�n�@]_1�"�ya{Ǉt�^DI�:UY$R�JU�6��*�G�@C����1��+�����{�y���.�F���JI�~�iM��ЂV�\�����S�,�8��F�e��";��Y�� ;(�n��:�Z��╌�M�T�H�d;m�#5%}��ߴ�SL_R�/$ X�1;Gی֡e.�nfT6�?�UK�7|=fxє�	��:��T�-��n�p��?�:��ņ�T�G��
�=ʗ� ɩ(��|4�����4�זq"Tۺ��\�c�!H2�u܋�=z��IO�ݎ������0��$��`j�Rpu���!<�9�QFiT>g<��6r���u:ʰ�κ��Q�ȋ�p��(-5x-�H�$I�V1oN����7�G��[�B��U���62 3\-��ޅ��!�DR4H4"^����̙��ex�2�Ϫb�����f�|p��ZEo�{�?gQ�"hi�h%�5i�E�ظ^{/��ݟ`�?[x���)��É��k��ѽ�Ic�A�u���ٞH��B�bg�p����v�m��0B��&J�d_Qw��k���q�n6ڬv\�������Z8�5JYd+j�n5��ěr     