.class public Lsa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lorg/json/JSONObject;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lsa;->a:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lsa;->b:Lorg/json/JSONObject;

    .line 141
    iput-object p3, p0, Lsa;->c:Ljava/lang/String;

    .line 142
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lsa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lsa;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lsa;->c:Ljava/lang/String;

    return-object v0
.end method
