.class LeP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeK;


# instance fields
.field final synthetic a:LeO;


# direct methods
.method constructor <init>(LeO;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, LeP;->a:LeO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
