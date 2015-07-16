.class public LDx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/dialog/PinCodeDialog;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/dialog/PinCodeDialog;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, LDx;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, LDx;->a:Lcom/yik/yak/ui/dialog/PinCodeDialog;

    invoke-virtual {v0}, Lcom/yik/yak/ui/dialog/PinCodeDialog;->finish()V

    .line 160
    return-void
.end method
