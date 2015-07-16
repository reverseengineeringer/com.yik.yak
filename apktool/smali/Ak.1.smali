.class public LAk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxv;


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
.method public a(Lxw;)LxJ;
    .locals 4

    .prologue
    .line 295
    invoke-interface {p1}, Lxw;->a()LxD;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, LxD;->g()LxF;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {v0, v1}, LxF;->b(Ljava/lang/String;)LxF;

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

    invoke-virtual {v0, v1, v2}, LxF;->b(Ljava/lang/String;Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 300
    invoke-interface {p1, v0}, Lxw;->a(LxD;)LxJ;

    move-result-object v0

    return-object v0
.end method
