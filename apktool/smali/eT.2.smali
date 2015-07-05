.class LeT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeO;


# instance fields
.field final synthetic a:LeS;


# direct methods
.method constructor <init>(LeS;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, LeT;->a:LeS;

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
