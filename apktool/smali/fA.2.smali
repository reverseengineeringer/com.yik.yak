.class LfA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeO;


# instance fields
.field final synthetic a:Lfz;


# direct methods
.method constructor <init>(Lfz;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, LfA;->a:Lfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
