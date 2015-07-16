.class LeY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LeK;


# instance fields
.field final synthetic a:LeX;


# direct methods
.method constructor <init>(LeX;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, LeY;->a:LeX;

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
