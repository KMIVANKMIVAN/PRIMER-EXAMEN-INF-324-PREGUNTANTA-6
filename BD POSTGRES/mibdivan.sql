PGDMP         7            	    y            mibdivan    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16400    mibdivan    DATABASE     f   CREATE DATABASE mibdivan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Bolivia.1252';
    DROP DATABASE mibdivan;
                postgres    false            �            1259    16427    persona    TABLE     �   CREATE TABLE public.persona (
    "CI_persona" character varying NOT NULL,
    "nombreCompleto" character varying,
    "fechaNacimiento" character varying,
    departamento character varying
);
    DROP TABLE public.persona;
       public         heap    postgres    false            �          0    16427    persona 
   TABLE DATA           b   COPY public.persona ("CI_persona", "nombreCompleto", "fechaNacimiento", departamento) FROM stdin;
    public          postgres    false    200   �       "           2606    16434    persona persona_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY ("CI_persona");
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public            postgres    false    200            �   $  x�m��JC1���S���L~�)Xĥ����n�з����"�d�2g�8\$V�e��r��Zk�p�@D1�Z|�e[�3e�V���.JT��/�/��J�9�Kj5|�圍�D]p�I���j�0� M�)��w�t���E�x���˰+�6z-@�Ē O�l�C�c
>��S]w�q�" \���mo�`�x�̞�k[�6OÆF�v��Χa�&0B4ɬ��r���a�Da##�e7��ٰF�����(״��D�"�e��~R�Y�ں�N�����?�"j1     