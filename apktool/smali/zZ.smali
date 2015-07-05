.class public LzZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method


# virtual methods
.method public a(Lxm;)Lxz;
    .locals 4

    .prologue
    .line 295
    invoke-interface {p1}, Lxm;->a()Lxt;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lxt;->g()Lxv;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, Lxv;->b(Ljava/lang/String;)Lxv;

    move-result-object v0

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/yik/yak/YikYak;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lxv;->b(Ljava/lang/String;Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 300
    invoke-interface {p1, v0}, Lxm;->a(Lxt;)Lxz;

    move-result-object v0

    return-object v0
.end method
