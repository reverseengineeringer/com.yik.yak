.class public Lue;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field final synthetic a:Lua;


# direct methods
.method public constructor <init>(Lua;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lue;->a:Lua;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
