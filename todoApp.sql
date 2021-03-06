PGDMP     +                    x            ToDoAppSpringFelece    12.5    12.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16967    ToDoAppSpringFelece    DATABASE     �   CREATE DATABASE "ToDoAppSpringFelece" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.utf8' LC_CTYPE = 'English_United States.utf8';
 %   DROP DATABASE "ToDoAppSpringFelece";
                postgres    false            �            1259    16968    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �            1259    17311    member    TABLE     �   CREATE TABLE public.member (
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    is_admin boolean
);
    DROP TABLE public.member;
       public         heap    postgres    false            �            1259    17319    member_roles    TABLE     �   CREATE TABLE public.member_roles (
    member_email character varying(255) NOT NULL,
    role_name character varying(255) NOT NULL
);
     DROP TABLE public.member_roles;
       public         heap    postgres    false            �            1259    17325    role    TABLE     G   CREATE TABLE public.role (
    name character varying(255) NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    17353    work    TABLE     �   CREATE TABLE public.work (
    id integer NOT NULL,
    description character varying(255),
    end_date character varying(255),
    status character varying(255),
    work_owner character varying(255)
);
    DROP TABLE public.work;
       public         heap    postgres    false            �            1259    17351    work_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.work_id_seq;
       public          postgres    false    207            #           0    0    work_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.work_id_seq OWNED BY public.work.id;
          public          postgres    false    206            �
           2604    17356    work id    DEFAULT     b   ALTER TABLE ONLY public.work ALTER COLUMN id SET DEFAULT nextval('public.work_id_seq'::regclass);
 6   ALTER TABLE public.work ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                      0    17311    member 
   TABLE DATA           R   COPY public.member (email, first_name, last_name, password, is_admin) FROM stdin;
    public          postgres    false    203   D                 0    17319    member_roles 
   TABLE DATA           ?   COPY public.member_roles (member_email, role_name) FROM stdin;
    public          postgres    false    204   �                 0    17325    role 
   TABLE DATA           $   COPY public.role (name) FROM stdin;
    public          postgres    false    205   �                 0    17353    work 
   TABLE DATA           M   COPY public.work (id, description, end_date, status, work_owner) FROM stdin;
    public          postgres    false    207   �       $           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          postgres    false    202            %           0    0    work_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.work_id_seq', 36, true);
          public          postgres    false    206            �
           2606    17318    member member_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (email);
 <   ALTER TABLE ONLY public.member DROP CONSTRAINT member_pkey;
       public            postgres    false    203            �
           2606    17329    role role_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (name);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    205            �
           2606    17361    work work_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.work DROP CONSTRAINT work_pkey;
       public            postgres    false    207            �
           2606    17330 (   member_roles fkie23dqh98ukgf70y7qhefocjm    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_roles
    ADD CONSTRAINT fkie23dqh98ukgf70y7qhefocjm FOREIGN KEY (role_name) REFERENCES public.role(name);
 R   ALTER TABLE ONLY public.member_roles DROP CONSTRAINT fkie23dqh98ukgf70y7qhefocjm;
       public          postgres    false    2708    205    204            �
           2606    17335 (   member_roles fko7jhtlokmix2wn87bj1qmi1qx    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_roles
    ADD CONSTRAINT fko7jhtlokmix2wn87bj1qmi1qx FOREIGN KEY (member_email) REFERENCES public.member(email);
 R   ALTER TABLE ONLY public.member_roles DROP CONSTRAINT fko7jhtlokmix2wn87bj1qmi1qx;
       public          postgres    false    2706    204    203               -  x�m����@ Ek�kt@Q�EQ�'�`�l3�02����me班ɮ��67��99a�g\}D)�LBY*��C�||���w�#��u�Ķ9���\2�����,�|U�y��1����oEJ�9�5�5�U�%N�&0(bD0HJ�^�0�N��Y:���z�:UԜ����n��V�m��i�Mm�y�U�A*�b�J �	�J�v=M635Y��I1�UdOgK>Hʣ���JS4	��H�:�������ox�y珋���Zzr@��P_�͂8L"�����+�On�_9+Ր?�_�(�?���n         A   x�KK�/J/�)��pH�M���K���tt����J)N�-�Av�J�i0D�)-N-B����� �� �            x�st����
v����� !�e         P  x����n�0���~��1{N�
US%!*��J���RK�#�.o_�B���|����VS��J�P��c�!qƆI�sd�FQ�[*˴�o�<�h-sͅ�RԜ�ʄ�:��S����&ρ{0�E
��JF2Q2\�R����)ۍ��?�Ѓ{��$�n�Mq��6oO�*��l�=���'UҾ.-���yQǵ��`��ecj�xP�w!z��Mې
=P4��Αa�����\f��;5���aYE�m�-m*^!v�3^U
2s���ÿ9��Dgd���Y{8���������J�	�L�����{��Z�Ѣ��;��٫���4M�X��     