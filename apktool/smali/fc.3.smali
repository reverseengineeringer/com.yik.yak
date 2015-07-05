.class Lfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeO;


# instance fields
.field final synthetic a:Lfb;


# direct methods
.method constructor <init>(Lfb;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lfc;->a:Lfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
