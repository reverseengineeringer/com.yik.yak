.class public final enum LIr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LIr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LIr;

.field public static final enum b:LIr;

.field public static final enum c:LIr;

.field public static final enum d:LIr;

.field public static final enum e:LIr;

.field public static final enum f:LIr;

.field public static final enum g:LIr;

.field private static final synthetic i:[LIr;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 75
    new-instance v0, LIr;

    const-string v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->a:LIr;

    .line 76
    new-instance v0, LIr;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->b:LIr;

    .line 79
    new-instance v0, LIr;

    const-string v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->c:LIr;

    .line 80
    new-instance v0, LIr;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->d:LIr;

    .line 81
    new-instance v0, LIr;

    const-string v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->e:LIr;

    .line 82
    new-instance v0, LIr;

    const-string v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->f:LIr;

    .line 83
    new-instance v0, LIr;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, LIr;-><init>(Ljava/lang/String;II)V

    sput-object v0, LIr;->g:LIr;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [LIr;

    sget-object v1, LIr;->a:LIr;

    aput-object v1, v0, v6

    sget-object v1, LIr;->b:LIr;

    aput-object v1, v0, v4

    sget-object v1, LIr;->c:LIr;

    aput-object v1, v0, v5

    sget-object v1, LIr;->d:LIr;

    aput-object v1, v0, v7

    sget-object v1, LIr;->e:LIr;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, LIr;->f:LIr;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LIr;->g:LIr;

    aput-object v2, v0, v1

    sput-object v0, LIr;->i:[LIr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, LIr;->h:I

    .line 89
    return-void
.end method
